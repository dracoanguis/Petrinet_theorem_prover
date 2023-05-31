//! The definition of the NNumber

use super::{Vector, set::Set};


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum NNumber {
    N,
    Integer(usize),
}

impl std::fmt::Display for NNumber {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            NNumber::N => write!(f,"N"),
            NNumber::Integer(n) => write!(f,"{}",n),
        }
    }
}

impl From<isize> for NNumber {
    fn from(i: isize) -> Self {
        NNumber::Integer(i as usize)  
    }
}

impl From<Vector<isize>> for Vector<NNumber> {
    fn from(vect: Vector<isize>) -> Self {
        let mut v = Vec::new();
        v.reserve(vect.len());
        for i in 0..vect.len() {
            v.push(NNumber::from(vect[i]));
        }
        Vector::new_from_vec(v)
    }
}

impl Vector<NNumber> {
    pub fn new_0_into_n(vect: Vector<isize>) -> Self {
        let mut v = Vec::new();
        v.reserve(vect.len());
        for i in 0..vect.len() {
            v.push(NNumber::new_0_into_n(vect[i]));
        }
        Vector::new_from_vec(v)
    }

    pub fn include(&self, other: &Vector<NNumber> ) -> bool {
        if self.len() != other.len() {
            panic!("Cannot check over different size vectors");
        }

        for u in 0..self.len() {
            if !self[u].include(&other[u]) {
                return false;
            }
        }
        true
    }

    // pub fn restrict_over(&self, bound: &Vector<NNumber>) -> Option<Self> {
    //     if self.len() != bound.len() {
    //         panic!("Cannot check over different size vectors");
    //     }

    //     let mut r = Vec::new();

    //     for u in 0..self.len() {
    //         if let Some(c) = self[u].restrict_over(&bound[u]) {
    //             r.push(c);
    //         } else {
    //             return None;
    //         }
    //     }

    //     Some(Vector::new_from_vec(r))
    // }

    
}

impl NNumber {
    pub fn include(&self, other: &Self) -> bool {
        match self {
            NNumber::N => true,
            NNumber::Integer(s) => {
                match other {
                    NNumber::N => false,
                    NNumber::Integer(o) => s == o,
                }
            }
        }
    }

    pub fn new_0_into_n(i: isize) -> Self {
        match i {
            0 => NNumber::N,
            n => NNumber::Integer(n as usize),
        }
    }

    // pub fn restrict_over(&self, bound: &NNumber) -> Option<Self> {
    //     match bound {
    //         NNumber::N => Some(*self),
    //         NNumber::Integer(b) => {
    //             match self {
    //                 NNumber::N => Some(*bound),
    //                 NNumber::Integer(s) if s != b => None,
    //                 _ => None
    //             }
    //         }
    //     }
    // }

}
