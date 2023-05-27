//! Petrinet module

use super::arc::*;
use crate::math::Matrix;

#[derive(Debug)]
pub struct Petrinet<'a> {
    name: String,
    places: &'a Vec<Place>,
    transitions: &'a Vec<Transition>,
    pre_arcs: Vec<Arc<'a>>,
    post_arcs: Vec<Arc<'a>>,

    pub in_matrix: Matrix,
    pub out_matrix: Matrix,
    pub incidence_matrix: Matrix,
    pub invariants: Option<Vec<Vec<isize>>>,
}

pub type Marking<'a> = Vec<(&'a Place, usize)>;

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

        let invariants = incidence_matrix.farkas().and_then(|i| Some(i.get_data()));

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
        let mut r_m: Marking = Vec::new();
        r_m.reserve(marking.len());

        for (s, u) in marking {
            if let Some(p) = self.places.iter().find(|p| p.eq(s)) {
                r_m.push((p, u));
            } else {
                return None;
            }
        }

        Some(r_m)
    }
}
