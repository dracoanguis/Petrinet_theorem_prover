//! EquationTheom definition over an Instancied Petrinet

use std::collections::HashSet;

use crate::{
    math::Vector,
    math::{
        equation::{Equation, BasicEquation},
        set::Set,
        NNumber,
    },
};

use super::petrinet::InstanciedPetrinet;

#[derive(Debug)]
enum EquationTheomKind {
    Equality,         // ==
    Inequality,       // <=
    InequalityStrict, // <
}

/// A theorem equation over a given Instancied petrinet
/// 
/// This theorem is defined to be considered over all reachable marking.
/// 
/// There is three subtypes, equality, inequation and strict inequation.
/// The inequation are always left part is lesser than right part.
/// 
/// # Examples
/// 
/// Here is the example of mutual-exclusion over P_3 P_4
/// (In deph explanation if you look at the associated research work paper)
/// ``` rust
/// 
/// let places = Place::new_default_vec(5);
/// let transitions = Transition::new_default_vec(4);
/// let pre_arcs = vec![
///     places[0].link_cost_1(&transitions[0]),
///     places[1].link_cost_1(&transitions[0]),
///     places[1].link(&transitions[3], 4),
///     places[2].link_cost_1(&transitions[3]),
///     places[3].link_cost_1(&transitions[2]),
///     places[4].link_cost_1(&transitions[1]),
/// ];
/// let post_arcs = vec![
///     transitions[0].link_gain_1(&places[4]),
///     transitions[1].link_gain_1(&places[0]),
///     transitions[1].link_gain_1(&places[1]),
///     transitions[2].link(&places[1], 4),
///     transitions[2].link_gain_1(&places[2]),
///     transitions[3].link_gain_1(&places[3]),
/// ];
/// let petri3 = Petrinet::new(
///     "lecteur redacteur".to_string(),
///     &places,
///     &transitions,
///     pre_arcs,
///     post_arcs,
/// );
/// 
/// println!("Invariants: ");
/// if let Some(invs) = &petri3.invariants {
///     for i in invs.iter() {
///         println!("{}", i);
///     }
/// }
/// 
/// let mark = petri3
///     .new_marking(vec![("P0", 4), ("P1", 4), ("P2", 1), ("P3", 0), ("P4", 0)])
///     .unwrap();
/// 
/// let i_petri3 = petri3.instanciate(mark);
/// 
/// println!("Instancied Invariant:");
/// 
/// for ii in i_petri3.i_invariants.iter() {
///     println!("{}", ii);
/// }
/// 
/// let the_a = EquationTheom::new_eq(&i_petri3, Vector::from(vec![0, 0, 0, 1, 0]), 0);
/// let the_b = EquationTheom::new_eq(&i_petri3, Vector::from(vec![0,0,0,0,1]), 0);
/// 
/// println!("EquationTheom: {}",&the_a);
/// println!("EquationTheom: {}",&the_b);
/// 
/// let sol_a = the_a.true_solve();
/// let sol_b = the_b.true_solve();
/// 
/// let sols = sol_a.union(&sol_b);
/// println!("Sols: {}",sols);
/// 
/// let constraint = the_a.get_constraint();
/// println!("New constraints: {}", constraint);
/// 
/// assert!(sols.include_set(&constraint));
/// ```
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
        match self.kind {
            EquationTheomKind::Equality => {
                BasicEquation::new(&self.weights, self.result).solve()
            },
            EquationTheomKind::Inequality => {
                let mut set = HashSet::new();
                for sub_res in 0..(self.result + 1) {
                    let mut sub_sols = BasicEquation::new(&self.weights, sub_res).solve();
                    set.extend(sub_sols.drain());
                }
                set
            }
            EquationTheomKind::InequalityStrict => {
                let mut set = HashSet::new();
                for sub_res in 0..self.result {
                    let mut sub_sols = BasicEquation::new(&self.weights, sub_res).solve();
                    set.extend(sub_sols.drain());
                }
                set
            }
        }
    }
}

// impl<'a> Theorem for EquationTheom<'a> {
//     fn check(&self) -> bool {
        
//         let constraints = self.get_constraint();
//         let t_sols = self.true_solve();

//         t_sols.include_set(&constraints)
//     }
// }

impl<'a> EquationTheom<'a> {

    /// Create a new theorem of equality type
    pub fn new_eq(over: &'a InstanciedPetrinet, weights: Vector<isize>, result: isize) -> Self {
        EquationTheom {
            over,
            kind: EquationTheomKind::Equality,
            weights,
            result,
        }
    }

    /// Create a new thorem of Inequality type
    pub fn new_ineq(over: &'a InstanciedPetrinet, weights: Vector<isize>, result: isize) -> Self {
        EquationTheom {
            over,
            kind: EquationTheomKind::Inequality,
            weights,
            result,
        }
    }

    /// Create a new theorem of strict Inequality type
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

    /// Returns the generated vector family
    pub fn true_solve(&self) -> Set {
        
        let sols = self.solve();

        let mut t_sols = Set::new_0_into_n_set(sols);

        if self.result == 0 {
            let mut t_vec =  Vector::new_0_into_n(self.get_weights());
            for p in 0..t_vec.len() {
                if t_vec[p] != NNumber::N {
                    t_vec = t_vec.set_at(p, NNumber::Integer(0));
                }
            }
            t_sols.insert(t_vec)
        }

        t_sols
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
    /// The returns the Set over wich the theorem needs to be valid to be true
    pub fn get_constraint(&self) -> Set {
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
        let the_b = EquationTheom::new_eq(&i_petri3, Vector::from(vec![0,0,0,0,1]), 0);

        println!("EquationTheom: {}",&the_a);
        println!("EquationTheom: {}",&the_b);

        let sol_a = the_a.true_solve();
        let sol_b = the_b.true_solve();

        let sols = sol_a.union(&sol_b);
        println!("Sols: {}",sols);

        let constraint = the_a.get_constraint();
        println!("New constraints: {}", constraint);

        assert!(sols.include_set(&constraint));
    }
}
