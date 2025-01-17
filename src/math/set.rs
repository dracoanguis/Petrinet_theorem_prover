//! The set module, it defines the set object

use std::{collections::HashSet};

use super::{NNumber, Vector};


/// A set of vectors over the NNumbers
#[derive(Debug)]
pub struct Set {
    data: Vec<Vector<NNumber>>,
}

impl Set {
    /// Creates a Set from a HashSet where every 0 is converted to the N number
    pub fn new_0_into_n_set(input_set: HashSet<Vector<isize>>) -> Self {
        let mut data = Vec::new();
        data.reserve(input_set.len());

        for vect in input_set {
            data.push(Vector::new_0_into_n(vect));
        }
        Self { data }
    }

    /// Creates a Set from a vec of Vector over NNumbers
    pub fn new_from_vec(data: Vec<Vector<NNumber>>) -> Self {
        Self { data }
    }

    /// Creates a Set from a HashSet
    pub fn new_from_set(input_set: HashSet<Vector<isize>>) -> Self {
        let mut data = Vec::new();
        data.reserve(input_set.len());

        for vect in input_set {
            data.push(Vector::from(vect));
        }
        Self { data }
    }

    /// Creates a new empty set
    pub fn new() -> Self {
        Self { data: Vec::new() }
    }

    /// Check if the set is empty
    pub fn is_empty(&self) -> bool {
        self.data.is_empty()
    }

    /// Check if the other vector is included in the current Set
    pub fn include(&self, other: &Vector<NNumber>) -> bool {
        self.data.iter().any(|v| v.include(other))
    }

    /// Check if the other Set is included in the curretn Set
    pub fn include_set(&self, other: &Self) -> bool {
        other.data.iter().all(|v| self.include(v))
    }

    /// Insert a vector over NNumbers in the current Set
    pub fn insert(&mut self, in_vect: Vector<NNumber>) {
        if !self.include(&in_vect) {
            self.data.push(in_vect);
        }
    }

    /// Creates a Set that is the intersection between the current set and the given vector over NNumbers
    fn intersect_vec(&self, vec: &Vector<NNumber>) -> Set {
        Self {
            data: self
                .data
                .iter()
                .map(|iv| iv.intersect(vec))
                .filter(|op| op.is_some())
                .map(|t_op| t_op.unwrap())
                .collect(),
        }
    }

    /// Creates a Set that is the intersection between the other Set and the current Set
    pub fn intersect(&self, other: &Self) -> Self {
        let b_s = if self.data.len() >= other.data.len() {
            (self, other)
        } else {
            (other, self)
        };

        let mut r_set = Self::new();

        for u in 0..b_s.1.data.len() {
            r_set = r_set.union(&b_s.0.intersect_vec(&b_s.1.data[u]));
        }

        // println!("{}",&r_set);
        return r_set;

        // Set { data: r_vec }
    }

    /// Creates a Set that is the union between the current Set and the othe Set
    pub fn union(&self, other: &Self) -> Self {
        let b_s = if self.data.len() >= other.data.len() {
            (self, other)
        } else {
            (other, self)
        };

        let mut n_data = b_s.0.data.clone();
        n_data.reserve_exact(b_s.1.data.len());

        for u in 0..b_s.1.data.len() {
            if !b_s.0.include(&b_s.1.data[u]) {
                n_data.push(b_s.1.data[u].clone());
            }
        }
        Self { data: n_data }
    }

    /// Returns the size in elements of the Set
    pub fn len(&self) -> usize {
        self.data.len()
    }
}

impl PartialEq for Set {
    fn eq(&self, other: &Self) -> bool {
        self.include_set(other) && other.include_set(self)
    }
}

impl std::fmt::Display for Set {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "{{")?;
        for u in 0..self.data.len() {
            write!(f, "{}", self.data[u])?;
        }
        write!(f, "}}")
    }
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn test_eq_self() {
        let a = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::N,
            NNumber::Integer(2),
        ])]);
        assert_eq!(a, a);
    }

    #[test]
    fn test_include_set() {
        let a = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::N,
            NNumber::Integer(2),
        ])]);
        let b = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::Integer(2),
            NNumber::Integer(2),
        ])]);

        assert!(a.include_set(&b));
    }

    #[test]
    fn test_intersect_mini() {
        let a = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::N,
            NNumber::Integer(2),
        ])]);
        let b = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::Integer(2),
            NNumber::Integer(2),
        ])]);

        assert_eq!(&a.intersect(&b), &b);
    }

    #[test]
    fn test_union_included() {
        let a = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::N,
            NNumber::Integer(2),
        ])]);
        let b = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::Integer(2),
            NNumber::Integer(2),
        ])]);

        assert_eq!(&a.union(&b), &a);
    }

    #[test]
    fn test_union() {
        let a = Set::new_from_vec(vec![Vector::new_from_vec(vec![
            NNumber::N,
            NNumber::Integer(2),
        ])]);
        let b = Set::new_from_vec(vec![
            Vector::new_from_vec(vec![NNumber::Integer(2), NNumber::Integer(2)]),
            Vector::new_from_vec(vec![NNumber::Integer(2), NNumber::Integer(4)]),
        ]);
        let c = Set::new_from_vec(vec![
            Vector::new_from_vec(vec![NNumber::N, NNumber::Integer(2)]),
            Vector::new_from_vec(vec![NNumber::Integer(2), NNumber::Integer(4)]),
        ]);

        assert_eq!(&a.union(&b), &c);
    }
}
