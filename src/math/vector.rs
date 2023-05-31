//! Vector module

use std::{hash::Hash, ops::{Add, Mul, Div, Sub, Index}, fmt::Display, iter::Sum};

#[derive(Debug, Eq, Clone)]
pub struct Vector<T> {
    data: Vec<T>,
}

impl<T: Mul<Output = T>> Mul<&Vector<T>> for T {
    type Output = Vector<T>;

    fn mul(self, rhs: &Vector<T>) -> Self::Output {
        Vector {
            data: rhs.data.iter().map(|r| self * r).collect(),
        }
    }
}

impl<T: Mul<Output = T>> Mul<T> for &Vector<T> {
    type Output = Vector<T>;

    fn mul(self, rhs: isize) -> Self::Output {
        Vector {
            data: self.data.iter().map(|&l| l * rhs).collect(),
        }
    }
}

impl<T: Mul<Output = T>> Mul for &Vector<T> {
    type Output = Vector<T>;

    fn mul(self, rhs: Self) -> Self::Output {
        Vector {
            data: self
                .data
                .iter()
                .zip(rhs.data.iter())
                .map(|(l, r)| l * r)
                .collect(),
        }
    }
}

impl<T: Div<Output = T>> Div<T> for &Vector<T> {
    type Output = Vector<T>;

    fn div(self, rhs: isize) -> Self::Output {
        Vector {
            data: self.data.iter().map(|&l| l / rhs).collect(),
        }
    }
}

impl<T: Div<Output = T>> Div for &Vector<T> {
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

impl<T: Add<Output = T>> Add for &Vector<T> {
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

impl<T: Sub<Output = T>> Sub for &Vector<T> {
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

// impl Clone for Vector {
//     fn clone(&self) -> Self {
//         Vector {
//             data: self.data.clone(),
//         }
//     }
// }

impl<T: Display> std::fmt::Display for Vector<T> {
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

impl<T> Vector<T> {

    pub fn gcd(&self) -> isize {
        self.data
            .clone()
            .into_iter()
            .reduce(|a, b| (gcd(a.unsigned_abs(), b.unsigned_abs())) as isize)
            .unwrap()
    }

    pub fn len(&self) -> usize {
        self.data.len()
    }

    // pub fn index(&self, a: usize) -> isize {
    //     self.data[a]
    // }

    pub fn set_at(&self, index: usize, value: T) -> Self {
        let mut new = self.clone();
        new.data[index] = value;
        return new;
    }

    pub(super) fn rotate_right(&mut self, k: usize) {
        self.data.rotate_right(k);
    }

    pub(super) fn truncate(&mut self, len: usize) {
        self.data.truncate(len)
    }
}

impl<T: Default> Vector<T> {
    pub fn new(size: usize) -> Self {
        Vector {
            data: vec![Default::default(); size],
        }
    }
}

impl<T: Sum> Vector<T> {
    pub fn sum(&self) -> T {
        self.data.iter().sum()
    }
}



pub fn gcd(a: usize, b: usize) -> usize {
    if a == b {
        return a;
    }
    if a == 0 {
        return b;
    }
    if b == 0 {
        return a;
    }
    if a % 2 == 0 {
        if b % 2 == 0 {
            return gcd(a >> 1, b >> 1) << 1;
        }
        return gcd(a >> 1, b);
    }
    if b % 2 == 0 {
        return gcd(a, b >> 1);
    }
    if a > b {
        return gcd(a.abs_diff(b) >> 1, b);
    }
    return gcd(a, b.abs_diff(a) >> 1);
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
        let v2 = 2 * &v;
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
