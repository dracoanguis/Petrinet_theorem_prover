
pub mod arc;
pub use arc::{Place, Transition};

pub mod petrinet;
pub use petrinet::{Petrinet};

// pub mod equation; // moved in math, made more sens
pub mod invariant;
pub mod theorem;
