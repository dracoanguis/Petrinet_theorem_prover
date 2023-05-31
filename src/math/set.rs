use std::{collections::HashSet, vec};

use super::{Vector, NNumber};

#[derive(Debug)]
pub struct Set {
    data: Vec<Vector<NNumber>>
}


impl Set {
    pub fn new_0_into_n_set(input_set: HashSet<Vector<isize>>) -> Self {
        let mut data = Vec::new();
        data.reserve(input_set.len());

        for vect in input_set {
            data.push(Vector::new_0_into_n(vect));
        }
        Set { data }
    }

    pub fn new_from_vec(data: Vec<Vector<NNumber>>) -> Self {
        Set { data }
    }

    pub fn include(&self, other: &Vector<NNumber>) -> bool {
        self.data.iter()
            .any(|v| v.include(other))
    }

    pub fn include_set(&self, other: &Self) -> bool {
        other.data.iter()
            .all(|v| self.include(v))
    }

    pub fn insert(&mut self, in_vect: Vector<NNumber>) {
        if !self.include(&in_vect) {
            self.data.push(in_vect);
        }
    }

    pub fn intersect(&self, other: &Self) -> Self {
        
        let b_s = if self.data.len() >= other.data.len() {
            (self,other)
        } else {
            (other,self)
        };
        
        let mut r_vec = Vec::new();
        r_vec.reserve(b_s.0.data.len());

        for u in 0..b_s.1.data.len() {
            if b_s.0.include(&b_s.1.data[u]) {
                r_vec.push(b_s.1.data[u].clone());
            }
        }

        Set { data: r_vec }
    }

}

impl PartialEq for Set {
    fn eq(&self, other: &Self) -> bool {
        self.include_set(other) && other.include_set(self)
    }
}


#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn test_eq_self() {

        let a = Set::new_from_vec(vec![
            Vector::new_from_vec(vec![NNumber::N,NNumber::Integer(2)]),
        ]);
        assert_eq!(a,a);
    }

    #[test]
    fn test_include_set() {
        let a = Set::new_from_vec(vec![
            Vector::new_from_vec(vec![NNumber::N,NNumber::Integer(2)]),
        ]);
        let b = Set::new_from_vec(vec![
            Vector::new_from_vec(vec![NNumber::Integer(2),NNumber::Integer(2)]),
        ]);

        assert!(a.include_set(&b));
    }

    #[test]
    fn test_intersect_mini() {
        let a = Set::new_from_vec(vec![
            Vector::new_from_vec(vec![NNumber::N,NNumber::Integer(2)]),
        ]);
        let b = Set::new_from_vec(vec![
            Vector::new_from_vec(vec![NNumber::Integer(2),NNumber::Integer(2)]),
        ]);

        assert_eq!(&a.intersect(&b),&b);
    }
}