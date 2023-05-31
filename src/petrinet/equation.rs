//! Equation trait definition, with default resolution

use std::{collections::HashSet, fmt::Debug, ops::{Mul, Div}, iter::Sum};

use crate::math::{Gcd, Vector};

#[derive(Debug)]
pub(super) struct PartialEquation {
    weights: Vector<isize>,
    result: isize,
}

impl Equation for PartialEquation {
    fn get_weights(&self) -> Vector<isize> {
        self.weights.clone()
    }

    fn get_result(&self) -> isize {
        self.result
    }
}

impl PartialEquation {
    pub fn new(weights: &Vector<isize>, result: isize) -> Self {
        PartialEquation {
            weights: weights.clone(),
            result,
        }
    }
}

pub trait Equation: Sized + Debug {
    fn get_weights(&self) -> Vector<isize>;
    fn get_result(&self) -> isize;

    fn get_simplify_factor(&self) -> isize {
        self.get_weights().gcd().gcd(self.get_result())
    }

    fn verify(&self, solution_vector: &Vector<isize>) -> bool {
        (&self.get_weights() * solution_vector).sum() == self.get_result()
    }

    fn solve(&self) -> HashSet<Vector<isize>> {
        // We first get the parameters and simplify
        let s_f = self.get_simplify_factor();

        // Sign that full Vector is 0
        if s_f == 0 || self.get_result() == 0 {
            return HashSet::new();
        }

        let w_init = &self.get_weights() / s_f;
        let r_init = self.get_result() / s_f;

        // println!("self: {:?} eq: {} = {}",self,w_init,r_init);

        let mut sols = HashSet::new();

        //We choose the first non-zero
        for i in 0..w_init.len() {
            let w = w_init[i];
            if w != Default::default() {
                for s in (0..=(r_init / w)).rev() {
                    let sub_eq = PartialEquation {
                        weights: w_init.set_at(i, 0),
                        result: r_init - s * w,
                    };

                    let possible_sol = Vector::new(w_init.len()).set_at(i, s);

                    if sub_eq.verify(&possible_sol) {
                        // println!("Self: {:?} Poss_eq: {}",self,possible_sol);
                        sols.insert(possible_sol);
                    }

                    let mut sub_sols = PartialEquation {
                        weights: w_init.set_at(i, 0),
                        result: r_init - s * w,
                    }
                    .solve();

                    sols.extend(sub_sols.drain().map(|v| v.set_at(i, s)));
                }
                break;
            }
        }

        // println!("self:{:?} sols:{:?}",self ,sols);
        sols
    }
}
