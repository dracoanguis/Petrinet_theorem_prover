//! Instancied Petrinet module

use std::collections::HashMap;

use super::arc::*;
use super::petrinet::*;
use super::invariant::*;

pub struct InstanciedPetrinet<'a> {
    petrinet: &'a Petrinet<'a>,
    marking: Marking<'a>,
    i_invariants: Option<Vec<InstanciedInvariant<'a>>>,
}

impl<'a> InstanciedPetrinet<'a> {

}