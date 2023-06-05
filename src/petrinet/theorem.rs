//! EquationTheom definition over an Instancied Petrinet

use std::collections::HashSet;

use crate::{
    math::Vector,
    math::{
        equation::{Equation, BasicEquation},
        set::Set,
    },
};

use super::petrinet::InstanciedPetrinet;

#[derive(Debug)]
enum EquationTheomKind {
    Equality,         // ==
    Inequality,       // <=
    InequalityStrict, // <
}

#[derive(Debug)]
pub struct EquationTheom<'a> {
    over: &'a InstanciedPetrinet<'a>,
    kind: EquationTheomKind,
    weights: Vector<isize>,
    result: isize,
}

impl<'a> Equation<isize> for EquationTheom<'a> {
    fn get_weights(&self) -> Vector<isize> {
        self.weights.clone()
    }

    fn get_result(&self) -> isize {
        self.result
    }

    fn verify(&self, solution_vector: &Vector<isize>) -> bool {
        match self.kind {
            EquationTheomKind::Equality => {
                BasicEquation::new(&self.weights, self.result).verify(solution_vector)
            }
            EquationTheomKind::InequalityStrict => {
                (&self.weights * solution_vector).sum() < self.result
            }
            EquationTheomKind::Inequality => (&self.weights * solution_vector).sum() <= self.result,
        }
    }

    fn solve(&self) -> HashSet<Vector<isize>> {
        // let sol_set = match self.kind {
        //     EquationTheomKind::Equality => {
        //         let set = PartialEquation::new(&self.weights, self.result).solve();
        //         println!("EquationTheom: sol: {:?}",set);
        //         set
        //     },
        //     EquationTheomKind::Inequality => {
        //         let mut set = HashSet::new();
        //         for sub_res in 0..(self.result + 1) {
        //             let mut sub_sols = PartialEquation::new(&self.weights, sub_res).solve();
        //             set.extend(sub_sols.drain());
        //         }
        //         set
        //     }
        //     EquationTheomKind::InequalityStrict => {
        //         let mut set = HashSet::new();
        //         for sub_res in 0..self.result {
        //             let mut sub_sols = PartialEquation::new(&self.weights, sub_res).solve();
        //             set.extend(sub_sols.drain());
        //         }
        //         set
        //     }
        // };

        // println!("EquationTheom:{} sols:{:?}",&self,&sol_set);

        if let Some(contraint_set) = self
            .over
            .i_invariants
            .clone()
            .into_iter()
            .reduce(|acc, cur| &acc + &cur)
            .and_then(|super_inv| Some(super_inv.solve()))
        {
            return contraint_set
                .into_iter()
                .filter(|s_v| self.verify(s_v))
                .collect();
        }

        HashSet::new()
    }
}

impl<'a> EquationTheom<'a> {
    fn new(
        over: &'a InstanciedPetrinet,
        kind: EquationTheomKind,
        weights: Vector<isize>,
        result: isize,
    ) -> Self {
        EquationTheom {
            over,
            kind,
            weights,
            result,
        }
    }

    pub fn new_eq(over: &'a InstanciedPetrinet, weights: Vector<isize>, result: isize) -> Self {
        EquationTheom {
            over,
            kind: EquationTheomKind::Equality,
            weights,
            result,
        }
    }

    pub fn new_ineq(over: &'a InstanciedPetrinet, weights: Vector<isize>, result: isize) -> Self {
        EquationTheom {
            over,
            kind: EquationTheomKind::Inequality,
            weights,
            result,
        }
    }

    pub fn new_strict_ineq(
        over: &'a InstanciedPetrinet,
        weights: Vector<isize>,
        result: isize,
    ) -> Self {
        EquationTheom {
            over,
            kind: EquationTheomKind::InequalityStrict,
            weights,
            result,
        }
    }
}

impl<'a> std::fmt::Display for EquationTheom<'a> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut first = true;

        for i in 0..self.weights.len() {
            let val = self.weights[i];
            if val == 0 {
                continue;
            } else {
                match val {
                    1 => {
                        if !first {
                            write!(f, "+")?;
                        } else {
                            first = false;
                        }
                        write!(f, "{}", self.over.petrinet.places[i].name)?;
                    }
                    -1 => {
                        if !first {
                            write!(f, "-")?;
                        } else {
                            first = false;
                        }
                        write!(f, "{}", self.over.petrinet.places[i].name)?;
                    }
                    val if val < 0 => {
                        if !first {
                            write!(f, "-")?;
                        } else {
                            first = false;
                        }
                        write!(f, "{}{}", val, self.over.petrinet.places[i].name)?;
                    }
                    _ => {
                        if !first {
                            write!(f, "+")?;
                        } else {
                            first = false;
                        }
                        write!(f, "{}{}", val, self.over.petrinet.places[i].name)?;
                    }
                }
            }
        }

        match self.kind {
            EquationTheomKind::Equality => write!(f, " = ")?,
            EquationTheomKind::Inequality => write!(f, " <= ")?,
            EquationTheomKind::InequalityStrict => write!(f, " < ")?,
        }

        write!(f, "{}", self.result)?;

        Ok(())
    }
}

impl<'a> EquationTheom<'a> {
    pub fn get_constraint(&self) -> Set {
        // let sol_set = match self.kind {
        //     EquationTheomKind::Equality => {
        //         let set = PartialEquation::new(&self.weights, self.result).solve();
        //         println!("EquationTheom: sol: {:?}",set);
        //         set
        //     },
        //     EquationTheomKind::Inequality => {
        //         let mut set = HashSet::new();
        //         for sub_res in 0..(self.result + 1) {
        //             let mut sub_sols = PartialEquation::new(&self.weights, sub_res).solve();
        //             set.extend(sub_sols.drain());
        //         }
        //         set
        //     }
        //     EquationTheomKind::InequalityStrict => {
        //         let mut set = HashSet::new();
        //         for sub_res in 0..self.result {
        //             let mut sub_sols = PartialEquation::new(&self.weights, sub_res).solve();
        //             set.extend(sub_sols.drain());
        //         }
        //         set
        //     }
        // };

        if let Some(constraint_set) = self
            .over
            .i_invariants
            .clone()
            .into_iter()
            .map(|ii| ii.true_solve())
            .reduce(|acc, cur| acc.intersect(&cur))
        {
            return constraint_set;
        } else {
            return Set::new();
        }
    }
}

#[cfg(test)]
mod test {

    use super::*;
    use crate::petrinet::arc::*;
    use crate::petrinet::petrinet::*;

    #[test]
    fn test_equation() {
        let places = Place::new_default_vec(5);
        let transitions = Transition::new_default_vec(4);
        let pre_arcs = vec![
            places[0].link_cost_1(&transitions[0]),
            places[1].link_cost_1(&transitions[0]),
            places[1].link(&transitions[3], 4),
            places[2].link_cost_1(&transitions[3]),
            places[3].link_cost_1(&transitions[2]),
            places[4].link_cost_1(&transitions[1]),
        ];
        let post_arcs = vec![
            transitions[0].link_gain_1(&places[4]),
            transitions[1].link_gain_1(&places[0]),
            transitions[1].link_gain_1(&places[1]),
            transitions[2].link(&places[1], 4),
            transitions[2].link_gain_1(&places[2]),
            transitions[3].link_gain_1(&places[3]),
        ];
        let petri3 = Petrinet::new(
            "lecteur redacteur".to_string(),
            &places,
            &transitions,
            pre_arcs,
            post_arcs,
        );

        println!("Invariants: ");
        if let Some(invs) = &petri3.invariants {
            for i in invs.iter() {
                println!("{}", i);
            }
        }

        let mark = petri3
            .new_marking(vec![("P0", 4), ("P1", 4), ("P2", 1), ("P3", 0), ("P4", 0)])
            .unwrap();

        let i_petri3 = petri3.instanciate(mark);

        println!("Instancied Invariant:");

        for ii in i_petri3.i_invariants.iter() {
            println!("{}", ii);
        }

        let the_a = EquationTheom::new_eq(&i_petri3, Vector::from(vec![0, 0, 0, 1, 0]), 0);
        // let the_b = EquationTheom::new_eq(&i_petri3, Vector::from(vec![0,0,0,0,1]), 0);

        // let sol_a = the_a.solve();

        // println!("EquationTheom: {} sol:{:?}",&the_a,&sol_a);

        // let sol_b = the_b.solve();

        // println!("EquationTheom: {} sol:{:?}",&the_a,&sol_b);

        // let sols:HashSet<Vector<isize>> = sol_a.union(&sol_b).cloned().collect();

        let sols = the_a.get_constraint();
        println!("New constraints: {}", sols);
        assert!(false);
    }
}
