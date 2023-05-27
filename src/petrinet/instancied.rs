//! Instancied Petrinet module

use super::arc::*;
use super::petrinet::*;

pub struct InstanciedInvariant<'a> {
    members: Vec<&'a Place>,
    weights: Vec<isize>,
}

pub struct InstanciedPetrinet<'a> {
    petrinet: &'a Petrinet<'a>,
    marking: Marking<'a>,
    i_invariants: Option<Vec<InstanciedInvariant<'a>>>,
}
