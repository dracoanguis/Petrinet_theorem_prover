//! Invariant module

use std::{ops::Add, fmt::Display};

use super::{arc::*, petrinet::Marking, equation::Equation};
use crate::math::{gcd, Vector};

#[derive(Debug, PartialEq, Clone)]
pub struct Invariant<'a> {
    places: &'a Vec<Place>,
    weights: Vector,
}

#[derive(Debug)]
pub struct InstanciedInvariant<'a> {
    equation: Invariant<'a>,
    result: isize,
}

impl<'a> Invariant<'a> {
    pub fn new(places: &'a Vec<Place>, weights: Vector) -> Self {
        Invariant { places, weights }
    }

    pub fn instanciate(&'a self, marking: &Marking) -> InstanciedInvariant<'a> {
        InstanciedInvariant::new(self, marking)
    }

    pub fn instanciate_from_result(&'a self, result: isize) -> InstanciedInvariant<'a> {
        InstanciedInvariant::new_from_result(self, result)
    }
}

impl<'a> Add for &Invariant<'a> {
    type Output = Invariant<'a>;

    fn add(self, rhs: Self) -> Self::Output {
        if self.places != rhs.places {
            panic!("Trying different petrinets invariants");
        }

        Invariant::new(self.places, &self.weights + &rhs.weights)
    }
}

impl<'a> std::fmt::Display for Invariant<'a> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        
        let mut first = true;
        
        for i in 0..self.weights.len() {
            let val = self.weights.index(i);
            if val == 0{
                continue;
            } else {
                match val {
                    1 => {
                        if !first {
                            write!(f,"+")?;
                        } else {
                            first = false;
                        }
                        write!(f,"{}",self.places[i].name)?;
                    },
                    -1 => {
                        if !first {
                            write!(f,"-")?;
                        } else {
                            first = false;
                        }
                        write!(f,"{}",self.places[i].name)?;
                    }
                    val if val<0 => {
                        if !first {
                            write!(f,"-")?;
                        } else {
                            first = false;
                        }
                        write!(f,"{}{}",val,self.places[i].name)?;
                    },
                    _ => {
                        if !first {
                            write!(f,"+")?;
                        } else {
                            first = false;
                        }
                        write!(f,"{}{}",val,self.places[i].name)?;
                    }
                }
            }
        }
        Ok(())
    }
}


impl<'a> InstanciedInvariant<'a> {
    pub fn new(equation: &'a Invariant, marking: &Marking) -> Self {
        let values = Vector::from(
            &equation
                .places
                .iter()
                .map(|p| marking.get(p).unwrap().clone() as isize)
                .collect(),
        );

        let result = (&equation.weights * &values).sum();

        InstanciedInvariant {
            equation: equation.clone(),
            result,
        }
    }

    pub fn new_from_result(equation: &'a Invariant, result: isize) -> Self {
        InstanciedInvariant {
            equation: equation.clone(),
            result,
        }
    }
}

impl<'a> Add for &InstanciedInvariant<'a> {
    type Output = InstanciedInvariant<'a>;

    fn add(self, rhs: Self) -> Self::Output {
        InstanciedInvariant {
            equation: &self.equation + &rhs.equation,
            result: self.result + rhs.result,
        }
    }
}

impl<'a> std::fmt::Display for InstanciedInvariant<'a> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{} = {}",self.equation,self.result)
    }
}

impl<'a> Equation for InstanciedInvariant<'a> {
    
    fn get_weights(&self) -> Vector {
        self.equation.weights.clone()
    }

    fn get_result(&self) -> isize {
        self.result
    }

    // fn simplify(&self) -> Self {
    //     let g_res = gcd(
    //         self.equation.weights.gcd().unsigned_abs(),
    //         self.result.unsigned_abs(),
    //     ) as isize;

    //     let n_weights = &self.equation.weights / g_res;
    //     let n_res = self.result / g_res;
    //     let i = Invariant::new(self.equation.places, n_weights);

    //     InstanciedInvariant {
    //         equation: i,
    //         result: n_res,
    //     }
    // }

    fn get_simplify_factor(&self) -> isize {
        self.equation.weights.gcd()
    }

}
