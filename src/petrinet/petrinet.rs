//! Petrinet module

use std::collections::HashMap;

use super::arc::*;
use super::invariant::*;

use crate::math::Matrix;

#[derive(Debug)]
pub struct Petrinet<'a> {
    pub name: String,
    pub places: &'a Vec<Place>,
    pub transitions: &'a Vec<Transition>,
    pub pre_arcs: Vec<Arc<'a>>,
    pub post_arcs: Vec<Arc<'a>>,

    pub in_matrix: Matrix,
    pub out_matrix: Matrix,
    pub incidence_matrix: Matrix,
    pub invariants: Option<Vec<Invariant<'a>>>,
}

pub type Marking<'a> = HashMap<&'a Place, usize>;

#[derive(Debug)]
pub struct InstanciedPetrinet<'a> {
    petrinet: &'a Petrinet<'a>,
    marking: Marking<'a>,
    i_invariants: Option<Vec<InstanciedInvariant<'a>>>,
}

impl<'a> Petrinet<'a> {
    pub fn new(
        name: String,
        places: &'a Vec<Place>,
        transitions: &'a Vec<Transition>,
        pre_arcs: Vec<Arc<'a>>,
        post_arcs: Vec<Arc<'a>>,
    ) -> Self {
        let mut in_vec: Vec<Vec<isize>> = Vec::new();
        let mut out_vec: Vec<Vec<isize>> = Vec::new();

        for p in places {
            let mut in_line: Vec<isize> = Vec::new();
            let mut out_line: Vec<isize> = Vec::new();

            for t in transitions {
                let in_arc = pre_arcs.iter().find(|f| f.is_from(p, t));
                let out_arc = post_arcs.iter().find(|f| f.is_from(p, t));

                if let Some(i) = in_arc {
                    in_line.push(i.cost_or_gain);
                } else {
                    in_line.push(0);
                }
                if let Some(i) = out_arc {
                    out_line.push(i.cost_or_gain);
                } else {
                    out_line.push(0);
                }
            }

            in_vec.push(in_line);
            out_vec.push(out_line);
        }

        let in_matrix = Matrix::from(in_vec);
        let out_matrix = Matrix::from(out_vec);

        let incidence_matrix = &out_matrix - &in_matrix;

        let invariants = incidence_matrix.farkas().and_then(|i| {
            Some(
                i.get_vectors()
                    .into_iter()
                    .map(|v| Invariant::new(places, v))
                    .collect(),
            )
        });

        Petrinet {
            name,
            places,
            transitions,
            pre_arcs,
            post_arcs,
            in_matrix,
            out_matrix,
            incidence_matrix,
            invariants,
        }
    }

    pub fn new_marking(&self, marking: Vec<(&str, usize)>) -> Option<Marking> {
        let mut r_m: Marking = HashMap::new();

        for (s, u) in marking {
            if let Some(p) = self.places.iter().find(|p| p == s) {
                r_m.insert(p, u);
            } else {
                return None;
            }
        }
        Some(r_m)
    }

    pub fn instanciate(&'a self, marking: Marking<'a>) -> InstanciedPetrinet<'a> {
        InstanciedPetrinet::new(self, marking)
    }
}

impl<'a> InstanciedPetrinet<'a> {
    pub fn new(petrinet: &'a Petrinet, marking: Marking<'a>) -> Self {
        match &petrinet.invariants {
            Some(invs) => {
                let i_invariants = Some(invs.iter().map(|v| v.instanciate(&marking)).collect());
                InstanciedPetrinet {
                    petrinet,
                    marking,
                    i_invariants,
                }
            }
            None => InstanciedPetrinet {
                petrinet,
                marking,
                i_invariants: None,
            },
        }
    }
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn test_petrinet_1_computed_values() {
        let places = vec![
            Place::new_without_comment("p1".to_string()),
            Place::new_without_comment(String::from("p2")),
        ];
        let transitions = vec![
            Transition::new_without_comment(String::from("t1")),
            Transition::new_without_comment(String::from("t2")),
            Transition::new_without_comment(String::from("t3")),
        ];
        let pre_arcs = vec![
            Arc::new(&places[0], &transitions[0], 2),
            Arc::new(&places[0], &transitions[1], 1),
            Arc::new(&places[1], &transitions[1], 6),
            Arc::new(&places[1], &transitions[2], 4),
        ];
        let post_arcs = vec![
            Arc::new(&places[0], &transitions[0], 5),
            Arc::new(&places[1], &transitions[0], 7),
            Arc::new(&places[1], &transitions[1], 3),
            Arc::new(&places[0], &transitions[2], 1),
        ];
        let pet = Petrinet::new(
            "Petri 1".to_string(),
            &places,
            &transitions,
            pre_arcs,
            post_arcs,
        );

        assert_eq!(
            pet.in_matrix,
            Matrix::from(vec![vec![2, 1, 0], vec![0, 6, 4]])
        );
        assert_eq!(
            pet.out_matrix,
            Matrix::from(vec![vec![5, 0, 1], vec![7, 3, 0]])
        );
        assert_eq!(
            pet.incidence_matrix,
            Matrix::from(vec![vec![3, -1, 1], vec![7, -3, -4]])
        );

        assert_eq!(pet.invariants, None)
    }
}
