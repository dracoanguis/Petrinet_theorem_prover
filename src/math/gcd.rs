//! This defines the Greatest Common Divisor trait and it's implementation for the usize and isize types.

/// The Greatest Common Divisor is defined over two numbers as the greates number d that satisfies a/d and b/d with the euclidian division.
///
/// We use this trait as a bound for the Vector.gcd method which implements the gcd over a Vector.
pub trait Gcd {
    /// The gcd between self and some other object of the same type.
    fn gcd(&self, other: Self) -> Self;
}

impl Gcd for usize {
    /// This method implments the GCD over to unsigned integers using the binary GCD algorithm aka the Stein's algorithm.
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
    /// This method use the unsigned values of isizes and re-use the implementation over the usize.
    fn gcd(&self, other: Self) -> Self {
        (self.unsigned_abs()).gcd(other.unsigned_abs()) as isize
    }
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn basic_test() {
        let a: usize = 5;
        let b: usize = 10;

        assert_eq!(a.gcd(5), 5);
        assert_eq!(b.gcd(a), 5);
        assert_eq!(a.gcd(0), 5);
    }
}
