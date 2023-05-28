//! Invariant module


use crate::math::Vector;

use super::{arc::*, petrinet::Marking};

#[derive(Debug, PartialEq)]
pub struct Invariant<'a> {
    places: &'a Vec<Place>,
    weights: Vector, 
}

#[derive(Debug)]
pub struct InstanciedInvariant<'a> {
    equation: &'a Invariant<'a>,
    result: isize,
}


impl<'a> Invariant<'a> {

    pub fn new(places: &'a Vec<Place>, weights: Vector) -> Self {
        Invariant { places, weights }
    }

    pub fn instanciate(&'a self, marking: &Marking) -> InstanciedInvariant<'a> {
        InstanciedInvariant::new(self, marking)
    }

}

impl<'a> InstanciedInvariant<'a> {

    pub fn new(equation: &'a Invariant, marking: &Marking) -> Self {
        
        let values = Vector::from(&equation.places.iter()
            .map(|p| marking.get(p).unwrap().clone() as isize ).collect()
            );

        let result = (&equation.weights * &values).sum();
        
        InstanciedInvariant { equation, result }
    }

    pub fn verify(&self, values: &Vector) -> bool {
        (&self.equation.weights * values).sum() == self.result
    }

}