//! Defines a new Vector struct that is closer to the mathematical definition and implements element wise operations.

use std::{
    fmt::Display,
    hash::Hash,
    iter::Sum,
    ops::{Add, Div, Index, Mul, Sub},
};

<<<<<<< HEAD
use super::z_number::ZNumber;

#[derive(Debug, Eq)]
pub struct Vector {
    data: Vec<ZNumber>,
=======
use super::Gcd;

/// A Vector in the mathematical sens, it implements a few element wise operations.
///
/// Mathematcally speaking it is a 1xN vector, and every operations implementations on it are element wise.
///
/// # Examples
/// ```rust
/// use petrinet_theorem_prover::math::Vector;
///
/// let v = Vector::new_from_vec(vec![1,2,3]);
/// let u = Vector::new_from_vec(vec![3,2,1]);
///
/// assert_eq!(&v*&u,Vector::new_from_vec(vec![3,4,3]));
/// assert_eq!(&v+&u, Vector::new_from_vec(vec![4,4,4]));
///
/// ```
#[derive(Debug, Eq)]
pub struct Vector<T> {
    data: Vec<T>,
>>>>>>> world_without
}

// Not usable because of theorical multiple definition, sadly see: https://rust-lang.github.io/rfcs/2451-re-rebalancing-coherence.html#concrete-orphan-rules
// impl<T: Mul<Output = T>> Mul<&Vector<T>> for T {
//     type Output = Vector<T>;

<<<<<<< HEAD
    fn mul(self, rhs: &Vector) -> Self::Output {
        Vector {
            data: rhs
                .data
                .iter()
                .map(|r| ZNumber::Integer(self) * *r)
                .collect(),
        }
    }
}
=======
//     fn mul(self, rhs: &Vector<T>) -> Self::Output {
//         Vector {
//             data: rhs.data.iter().map(|r| self * r).collect(),
//         }
//     }
// }
>>>>>>> world_without

impl<T: Copy + Mul<Output = T>> Mul<T> for &Vector<T> {
    type Output = Vector<T>;

    fn mul(self, rhs: T) -> Self::Output {
        Vector {
            data: self
                .data
                .iter()
                .map(|&l| l * ZNumber::Integer(rhs))
                .collect(),
        }
    }
}

impl<T: Copy + Mul<Output = T>> Mul for &Vector<T> {
    type Output = Vector<T>;

    fn mul(self, rhs: Self) -> Self::Output {
        Vector {
            data: self
                .data
                .iter()
                .zip(rhs.data.iter())
<<<<<<< HEAD
                .map(|(l, r)| *l * *r)
=======
                .map(|(&l, &r)| l * r)
>>>>>>> world_without
                .collect(),
        }
    }
}

impl<T: Copy + Div<Output = T>> Div<T> for &Vector<T> {
    type Output = Vector<T>;

    fn div(self, rhs: T) -> Self::Output {
        Vector {
            data: self
                .data
                .iter()
                .map(|&l| l / ZNumber::Integer(rhs))
                .collect(),
        }
    }
}

impl<T: Copy + Div<Output = T>> Div for &Vector<T> {
    type Output = Vector<T>;

    fn div(self, rhs: Self) -> Self::Output {
        Vector {
            data: self
                .data
                .iter()
                .zip(rhs.data.iter())
                .map(|(&l, &r)| l / r)
                .collect(),
        }
    }
}

impl<T: Copy + Add<Output = T>> Add for &Vector<T> {
    type Output = Vector<T>;

    fn add(self, rhs: Self) -> Self::Output {
        Vector {
            data: self
                .data
                .iter()
                .zip(rhs.data.iter())
                .map(|(&l, &r)| l + r)
                .collect(),
        }
    }
}

impl<T: Copy + Sub<Output = T>> Sub for &Vector<T> {
    type Output = Vector<T>;

    fn sub(self, rhs: Self) -> Self::Output {
        Vector {
            data: self
                .data
                .iter()
                .zip(rhs.data.iter())
                .map(|(&l, &r)| l - r)
                .collect(),
        }
    }
}

impl<T: PartialEq> PartialEq for Vector<T> {
    fn eq(&self, other: &Self) -> bool {
        self.len() == other.len() && self.data.iter().zip(other.data.iter()).all(|(l, r)| l == r)
    }
}

<<<<<<< HEAD
impl From<Vec<isize>> for Vector {
    fn from(vec: Vec<isize>) -> Self {
        Vector {
            data: vec.iter().map(|i| ZNumber::from(*i)).collect(),
        }
    }
}

impl From<&Vec<isize>> for Vector {
    fn from(vec: &Vec<isize>) -> Self {
        Vector {
            data: vec.iter().map(|i| ZNumber::from(*i)).collect(),
        }
    }
}

impl Into<Vec<isize>> for Vector {
    fn into(self) -> Vec<isize> {
        self.data.into_iter().map(|zn| zn.into()).collect()
    }
}

impl Into<Vec<isize>> for &Vector {
    fn into(self) -> Vec<isize> {
        self.data.clone().into_iter().map(|zn| zn.into()).collect()
    }
}

impl Clone for Vector {
    fn clone(&self) -> Self {
        Vector {
            data: self.data.clone(),
        }
    }
}

impl std::fmt::Display for Vector {
=======
impl<T: Display> std::fmt::Display for Vector<T> {
>>>>>>> world_without
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "[")?;
        for i in self.data.iter() {
            write!(f, " {} ", i)?;
        }
        write!(f, "]")?;

        Ok(())
    }
}

impl<T: Hash> Hash for Vector<T> {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        self.data.hash(state);
    }
}

impl<T> Index<usize> for Vector<T> {
    type Output = T;

    fn index(&self, index: usize) -> &Self::Output {
        &self.data[index]
    }
}

impl<T: Copy + Default> Vector<T> {
    /// Creates a new vector of lenght size filled with default values of the corresponding type.
    pub fn new(size: usize) -> Self {
        Vector {
<<<<<<< HEAD
            data: vec![ZNumber::Integer(0); size],
        }
    }

    pub fn new_inconsidered(size: usize) -> Self {
        Vector {
            data: vec![ZNumber::NonConsidered; size],
=======
            data: vec![Default::default(); size],
>>>>>>> world_without
        }
    }
}

impl<T: Copy + Sum> Vector<T> {
    /// Add each values of the Vector and returns the total computed sum.
    pub fn sum(&self) -> T {
        self.clone().data.into_iter().sum()
    }
}

impl<T: Copy + Gcd> Vector<T> {
    /// Implements the gcd over a vector using a reduce operation.
    /// This function works over the math::gcd::Gcd trait.
    pub fn gcd(&self) -> T {
        self.data
            .clone()
            .into_iter()
<<<<<<< HEAD
            .map(|zn| zn.into())
            .reduce(|a: isize, b| (gcd(a.unsigned_abs(), b.unsigned_abs())) as isize)
=======
            .reduce(|a, b| a.gcd(b))
>>>>>>> world_without
            .unwrap()
    }
}

impl<T: Clone> Clone for Vector<T> {
    fn clone(&self) -> Self {
        Vector {
            data: self.data.clone(),
        }
    }
}

<<<<<<< HEAD
    pub fn sum(&self) -> isize {
        self.data
            .iter()
            .fold(ZNumber::Integer(0), |acc, cur| acc + *cur)
            .into()
    }

    pub fn index(&self, a: usize) -> ZNumber {
        self.data[a]
    }

    pub fn set_at(&self, index: usize, value: ZNumber) -> Self {
        let mut new = self.clone();
        new.data[index] = value;
        return new;
=======
impl<T: Clone + Copy> Vector<T> {
    /// This function returns a new Vector that is a copy of the original with value at index replaced.
    pub fn set_at(&self, index: usize, value: T) -> Self {
        let mut r = self.clone();
        r.data[index] = value;
        return r;
>>>>>>> world_without
    }

    pub(super) fn rotate_right(&mut self, k: usize) {
        self.data.rotate_right(k);
    }

    pub(super) fn truncate(&mut self, len: usize) {
        self.data.truncate(len)
    }
}

impl<T> Vector<T> {
    /// This function returns the lenght of the Vector.
    pub fn len(&self) -> usize {
        self.data.len()
    }

    /// This function creates a new Vector from an std::Vec over the same type T.
    pub fn new_from_vec(data: Vec<T>) -> Self {
        Vector { data }
    }
}

impl From<Vec<isize>> for Vector<isize> {
    fn from(vec: Vec<isize>) -> Self {
        Vector { data: vec }
    }
}

impl From<&Vec<isize>> for Vector<isize> {
    fn from(vec: &Vec<isize>) -> Self {
        Vector { data: vec.clone() }
    }
}

impl Into<Vec<isize>> for Vector<isize> {
    fn into(self) -> Vec<isize> {
        self.data
    }
}

impl Into<Vec<isize>> for &Vector<isize> {
    fn into(self) -> Vec<isize> {
        self.data.clone()
    }
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn test_equality() {
        let v = Vector::from(vec![1, 2, 3]);
        let v2 = Vector::from(vec![1, 2, 3]);
        assert_eq!(v, v2);
    }

    #[test]
    fn test_add() {
        let v = Vector::from(vec![1, 2, 3]);
        let v2 = Vector::from(vec![3, 2, 1]);
        let r = &v + &v2;
        assert_eq!(r, Vector::from(vec![4, 4, 4]));
    }

    #[test]
    fn test_mul_i() {
        let v = Vector::from(vec![1, 2, 3]);
        let v2 = &v * 2;
        let v3 = Vector::from(vec![2, 4, 6]);
        assert_eq!(v2, v3);
    }

    #[test]
    fn test_mul_vec() {
        let v = Vector::from(vec![1, 2, 3, 4]);
        let v2 = Vector::from(vec![1, 0, 0, 1]);
        let r = Vector::from(vec![1, 0, 0, 4]);
        assert_eq!((&v * &v2), r);
    }

    #[test]
    fn test_div_vec() {
        let v = Vector::from(vec![2, 2, 3, 4]);
        let v2 = Vector::from(vec![2, 1, 1, 2]);
        let r = Vector::from(vec![1, 2, 3, 2]);
        assert_eq!(&v / &v2, r);
    }

    #[test]
    fn test_sub() {
        let v = Vector::from(vec![1, 2, 3]);
        let v2 = Vector::from(vec![3, 2, 1]);
        assert_eq!(&v - &v2, Vector::from(vec![-2, 0, 2]));
    }

    #[test]
    fn test_div() {
        let v = Vector::from(vec![2, 4, 6]);
        assert_eq!(&v / 2, Vector::from(vec![1, 2, 3]));
    }

    #[test]
    fn test_ne() {
        let v = Vector::from(vec![1, 2, 3]);
        let v2 = Vector::from(vec![1, 2, 3, 4]);
        assert_ne!(v, v2);
    }
}
