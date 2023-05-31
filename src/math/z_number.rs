use std::{iter::Sum, ops};

#[derive(Debug, Clone, Copy, Hash)]
pub enum ZNumber {
    Integer(isize),
    NonConsidered,
}

impl ops::Add for ZNumber {
    type Output = ZNumber;

    fn add(self, rhs: Self) -> Self::Output {
        match self {
            ZNumber::NonConsidered => rhs,
            ZNumber::Integer(l) => match rhs {
                ZNumber::NonConsidered => ZNumber::Integer(l),
                ZNumber::Integer(r) => ZNumber::Integer(l + r),
            },
        }
    }
}

impl ops::Mul for ZNumber {
    type Output = ZNumber;

    fn mul(self, rhs: Self) -> Self::Output {
        match self {
            ZNumber::NonConsidered => ZNumber::NonConsidered,
            ZNumber::Integer(l) => match rhs {
                ZNumber::NonConsidered => ZNumber::NonConsidered,
                ZNumber::Integer(r) => ZNumber::Integer(l * r),
            },
        }
    }
}

impl ops::Sub for ZNumber {
    type Output = ZNumber;

    fn sub(self, rhs: Self) -> Self::Output {
        self + ZNumber::Integer(-1) * rhs
    }
}

impl ops::Div for ZNumber {
    type Output = ZNumber;

    fn div(self, rhs: Self) -> Self::Output {
        match rhs {
            ZNumber::NonConsidered => panic!("The division by zero is not defined"),
            ZNumber::Integer(r) => match self {
                ZNumber::NonConsidered => ZNumber::NonConsidered,
                ZNumber::Integer(l) => ZNumber::Integer(l / r),
            },
        }
    }
}

impl PartialEq for ZNumber {
    fn eq(&self, other: &Self) -> bool {
        match self {
            ZNumber::NonConsidered => true,
            ZNumber::Integer(l) => match other {
                ZNumber::NonConsidered => true,
                ZNumber::Integer(r) => l == r,
            },
        }
    }

    fn ne(&self, other: &Self) -> bool {
        match self {
            ZNumber::NonConsidered => match other {
                ZNumber::NonConsidered => false,
                ZNumber::Integer(_) => true,
            },
            ZNumber::Integer(l) => match other {
                ZNumber::NonConsidered => true,
                ZNumber::Integer(r) => l != r,
            },
        }
    }
}

impl From<isize> for ZNumber {
    fn from(num: isize) -> Self {
        ZNumber::Integer(num)
    }
}

impl Into<isize> for ZNumber {
    fn into(self) -> isize {
        match self {
            ZNumber::Integer(i) => i,
            ZNumber::NonConsidered => 0,
        }
    }
}

impl Into<usize> for ZNumber {
    fn into(self) -> usize {
        match self {
            ZNumber::Integer(i) => i as usize,
            ZNumber::NonConsidered => 0,
        }
    }
}

impl Eq for ZNumber {}

impl std::fmt::Display for ZNumber {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            ZNumber::NonConsidered => write!(f, "Z"),
            ZNumber::Integer(i) => write!(f, "{}", i),
        }
    }
}

impl ZNumber {
    pub fn signum(&self) -> isize {
        match self {
            ZNumber::NonConsidered=> 0,
            ZNumber::Integer(i) => i.signum(),
        }
    }

    pub fn abs(&self) -> isize {
        match self {
            ZNumber::NonConsidered => 0,
            ZNumber::Integer(i) => i.abs(),
        }
    }
}