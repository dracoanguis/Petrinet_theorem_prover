
use std::{ops::{Add, Mul, Div, RangeInclusive}, iter::Sum};

use super::{Gcd};


pub trait Numeric: Gcd+Default+PartialEq+Add<Output = Self>+Mul<Output = Self>+Sum+Div<Output = Self>+Copy {

    fn get_null(&self) -> Self;

    fn get_range_inclusive_from_null(&self) -> dyn Iterator<Item=Self> ;

}


impl Numeric for isize {

    fn get_null(&self) -> Self {
        0
    }

    fn get_range_inclusive_from_null(&self) -> dyn Iterator<Item = Self> {
        0..=*self
    }

}