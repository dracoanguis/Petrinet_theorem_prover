//! The definition of the NNumber


#[derive(Debug, Clone, Copy)]
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

