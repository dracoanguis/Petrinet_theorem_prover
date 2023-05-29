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
    pub i_invariants: Option<Vec<InstanciedInvariant<'a>>>,
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

    use crate::{math::Vector, petrinet::equation::Equation};
    use super::*;

    #[test]
    fn test_petrinet_computed_values_1() {
        let places = Place::new_default_vec(2);
        let transitions = Transition::new_default_vec(3);
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

    #[test]
    fn test_petrinet_computed_values_2() {
        
            let places = Place::new_default_vec(4);
            let transitions = Transition::new_default_vec(5);
            let pre_arcs = vec![
                places[0].link_cost_1(&transitions[0]),
                places[1].link_cost_1(&transitions[1]),
                places[2].link_cost_1(&transitions[2]),
                places[2].link_cost_1(&transitions[3]),
                places[3].link_cost_1(&transitions[4]),
            ];
            let post_arcs = vec![
                transitions[0].link_gain_1(&places[1]),
                transitions[1].link_gain_1(&places[2]),
                transitions[2].link_gain_1(&places[0]),
                transitions[3].link_gain_1(&places[3]),
                transitions[4].link_gain_1(&places[2]),                
            ];
            let petri2 = Petrinet::new(
                "Petri2".to_string(),
                &places,
                &transitions,
                pre_arcs,
                post_arcs
            );

        assert_eq!(
            petri2.in_matrix,
            Matrix::from(vec![vec![1,0,0,0,0],vec![0,1,0,0,0],vec![0,0,1,1,0],vec![0,0,0,0,1]])
        );

        assert_eq!(
            petri2.out_matrix,
            Matrix::from(vec![vec![0,0,1,0,0],vec![1,0,0,0,0],vec![0,1,0,0,1],vec![0,0,0,1,0]])
        );

        assert_eq!(
            petri2.incidence_matrix,
            Matrix::from(vec![vec![-1,0,1,0,0],vec![1,-1,0,0,0],vec![0,1,-1,-1,1],vec![0,0,0,1,-1]])
        );

        assert_eq!(
            petri2.invariants,
            Some(vec![Invariant::new(&places, Vector::from(vec![1,1,1,1]))])
        );
    }


    #[test]
    fn test_invariants_solve(){
        let places = Place::new_default_vec(4);
        let transitions = Transition::new_default_vec(5);
        let pre_arcs = vec![
            Arc::new_cost_1(&places[0], &transitions[0]),
            Arc::new_cost_1(&places[1], &transitions[1]),
            Arc::new_cost_1(&places[2], &transitions[2]),
            Arc::new_cost_1(&places[2], &transitions[3]),
            Arc::new_cost_1(&places[3], &transitions[4]), 
        ];
        let post_arcs = vec![
            Arc::new_cost_1(&places[1], &transitions[0]),
            Arc::new_cost_1(&places[2], &transitions[1]),
            Arc::new_cost_1(&places[0], &transitions[2]),
            Arc::new_cost_1(&places[3], &transitions[3]),
            Arc::new_cost_1(&places[2], &transitions[4]),
        ];
        let petri2 = Petrinet::new(
            "Petri2".to_string(),
            &places,
            &transitions,
            pre_arcs,
            post_arcs
        );

        let mark = petri2.new_marking(vec![
            ("P0",1),
            ("P1",1),
            ("P2",1),
            ("P3",1),
        ]).unwrap();

        let i_petri2 = petri2.instanciate(mark);

        assert_eq!(
            i_petri2.i_invariants.and_then(|v| 
                v[0].solve().and_then(|r| {
                    r.iter().for_each(|vec| println!("{}",vec)); 
                    Some(r.len())
                })
            ),
            Some(35)
        );
    }

}
