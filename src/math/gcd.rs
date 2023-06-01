// Gcd module

pub trait Gcd {
    fn gcd(&self, other: Self) -> Self;
}

impl Gcd for usize {
    fn gcd(&self, other: usize) -> usize {
        if self == &other {
            return *self;
        }
        if self == &0 {
            return other;
        }
        if other == 0 {
            return *self;
        }
        if self % 2 == 0 {
            if other % 2 == 0 {
                return (self >> 1).gcd(other >> 1) << 1;
            }
            return (self >> 1).gcd(other);
        }
        if other % 2 == 0 {
            return self.gcd(other >> 1);
        }
        if self > &other {
            return (self.abs_diff(other) >> 1).gcd(other);
        }
        return self.gcd(other.abs_diff(*self) >> 1);
    }
}

impl Gcd for isize {
    fn gcd(&self, other: Self) -> Self {
        (*self as usize).gcd(other as usize) as isize
    }
}
