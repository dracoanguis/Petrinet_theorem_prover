//! Theorem definition over an Instancied Petrinet

use std::collections::HashSet;

use crate::{math::Vector, petrinet::petrinet::InstanciedPetrinet};

use super::equation::{Equation, PartialEquation};

#[derive(Debug)]
enum TheoremKind {
    Equality,         // ==
    Inequality,       // <=
    InequalityStrict, // <
}

#[derive(Debug)]
pub struct Theorem<'a> {
    over: &'a InstanciedPetrinet<'a>,
    kind: TheoremKind,
    weights: Vector,
    result: isize,
}

impl<'a> Equation for Theorem<'a> {
    fn get_weights(&self) -> Vector {
        self.weights.clone()
    }

    fn get_result(&self) -> isize {
        self.result
    }

    fn verify(&self, solution_vector: &Vector) -> bool {
        match self.kind {
            TheoremKind::Equality => {
                PartialEquation::new(&self.weights, self.result).verify(solution_vector)
            }
            TheoremKind::InequalityStrict => (&self.weights * solution_vector).sum() < self.result,
            TheoremKind::Inequality => (&self.weights * solution_vector).sum() <= self.result,
        }
    }

    fn solve(&self) -> HashSet<Vector> {
        match self.kind {
            TheoremKind::Equality => PartialEquation::new(&self.weights, self.result).solve(),
            TheoremKind::Inequality => {
                let mut v = HashSet::new();
                for sub_res in 0..(self.result + 1) {
                    let mut sub_sols = PartialEquation::new(&self.weights, sub_res).solve();
                    v.extend(sub_sols.drain());
                }
                return v;
            }
            TheoremKind::InequalityStrict => {
                let mut v = HashSet::new();
                for sub_res in 0..self.result {
                    let mut sub_sols = PartialEquation::new(&self.weights, sub_res).solve();
                    v.extend(sub_sols.drain());
                }
                return v;
            }
        }
    }
}

#[cfg(test)]
mod test {

    use super::*;

    // #[test]
    // fn test_
}
