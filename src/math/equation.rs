//! Equation trait definition, with default resolution

use std::{
    collections::HashSet,
    fmt::Debug,
    iter::Sum,
    ops::Mul,
};

use crate::math::{Gcd, Vector};

/// The equation trait
pub trait Equation<T: Gcd + Copy + Mul<Output = T> + Sum + PartialEq> {
    /// Returns the weights of the equation
    fn get_weights(&self) -> Vector<T>;

    /// Returns the expected result of the equation
    fn get_result(&self) -> T;

    /// Get the simplification factor, if the two sides are divisible by an integer
    fn get_simplify_factor(&self) -> T {
        self.get_weights().gcd().gcd(self.get_result())
    }

    /// Verify if the given vector is a valid solution to the equation
    fn verify(&self, solution_vector: &Vector<T>) -> bool {
        (&self.get_weights() * solution_vector).sum() == self.get_result()
    }

    /// Returns a HashSet of every valid solution
    fn solve(&self) -> HashSet<Vector<T>>;

    // fn combine_or<U>(&self, other: U) -> OrEquation<Self, U>
    // where
    //     Self: Sized,
    //     U: Equation<T>
    // {
    //     OrEquation::new(self, other)
    // }
}


/// The most basiqe structure that implements the equation trait
#[derive(Debug)]
pub struct BasicEquation {
    weights: Vector<isize>,
    result: isize,
}

impl Equation<isize> for BasicEquation {
    fn get_weights(&self) -> Vector<isize> {
        self.weights.clone()
    }

    fn get_result(&self) -> isize {
        self.result
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
                    let sub_eq = BasicEquation {
                        weights: w_init.set_at(i, 0),
                        result: r_init - s * w,
                    };

                    let possible_sol = Vector::new(w_init.len()).set_at(i, s);

                    if sub_eq.verify(&possible_sol) {
                        // println!("Self: {:?} Poss_eq: {}",self,possible_sol);
                        sols.insert(possible_sol);
                    }

                    let mut sub_sols = BasicEquation {
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

impl BasicEquation {
    /// Creates a new basic equation from the given data
    pub fn new(weights: &Vector<isize>, result: isize) -> Self {
        BasicEquation {
            weights: weights.clone(),
            result,
        }
    }
}

// struct OrEquation<T, U> {
//     first: T,
//     second: U,
// }

// impl<T, U> OrEquation<T, U> 
// where 
//     // V: Gcd + Copy + Mul<Output = V> + Sum + PartialEq,
//     T: Equation,
//     U: Equation,
// {
//     pub fn new(first: T, second: U) -> Self {
//         OrEquation { first, second }
//     }
// }