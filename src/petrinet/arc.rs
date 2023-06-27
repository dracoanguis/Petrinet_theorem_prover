//! Base types for petrinets construction.

use std::hash::Hash;

/// A Place of a Petrinet
/// 
/// It constains a name and a comment string
#[derive(Debug)]
pub struct Place {
    /// The identifier of the place
    pub name: String,
    /// A human readable comment about it, it has no influence over anything
    pub comment: String,
}

/// A Transition of a Petrinet
/// 
/// It constains a name and a comment string
#[derive(Debug)]
pub struct Transition {
    /// The identifier of the transition
    pub name: String,
    /// A human readable comment about it, it has no influence over anything
    pub comment: String,
}

/// An Arc of Petrinet
/// 
/// It is defined between a Place and a Transition or the inverse
/// 
/// # Examples
/// ``` rust
/// 
/// let places = Place::new_default_vec(4);
/// let transitions = Transition::new_default_vec(5);
/// let pre_arcs = vec![
///     places[0].link_cost_1(&transitions[0]),
///     places[1].link_cost_1(&transitions[1]),
///     places[2].link_cost_1(&transitions[2]),
///     places[2].link_cost_1(&transitions[3]),
///     places[3].link_cost_1(&transitions[4]),
/// ];
/// let post_arcs = vec![
///     transitions[0].link_gain_1(&places[1]),
///     transitions[1].link_gain_1(&places[2]),
///     transitions[2].link_gain_1(&places[0]),
///     transitions[3].link_gain_1(&places[3]),
///     transitions[4].link_gain_1(&places[2]),
/// ];
/// 
/// ```
#[derive(Debug)]
pub struct Arc<'a> {
    place: &'a Place,
    pub(super) cost_or_gain: isize,
    transition: &'a Transition,
}

impl Place {
    /// Creates a new place from a name and a comment
    pub fn new(name: String, comment: String) -> Self {
        Place { name, comment }
    }

    /// Creates a new place from a name only
    pub fn new_without_comment(name: String) -> Self {
        let comment = String::new();
        Place { name, comment }
    }

    /// Creates a vector of size number of place wich a names P_0.. P_(size-1)
    pub fn new_default_vec(size: usize) -> Vec<Place> {
        let mut v = Vec::new();
        v.reserve(size);

        for i in 0..size {
            v.push(Place::new_without_comment(format!("P{}", i.to_string())));
        }

        v
    }

    /// Creates an (Pre-)Arc from the current place and the given transition with the precised cost
    pub fn link<'a>(&'a self, transition: &'a Transition, cost: isize) -> Arc<'a> {
        Arc {
            place: self,
            cost_or_gain: cost,
            transition,
        }
    }

    /// Creates an (Pre-)Arc from the current place and the given transition with a cost of 1
    pub fn link_cost_1<'a>(&'a self, transition: &'a Transition) -> Arc<'a> {
        Arc {
            place: self,
            cost_or_gain: 1,
            transition,
        }
    }
}

impl PartialEq for Place {
    fn eq(&self, other: &Self) -> bool {
        self.name.eq(&other.name)
    }
}

impl PartialEq<str> for &Place {
    fn eq(&self, other: &str) -> bool {
        self.name.eq(other)
    }
}

impl PartialEq<Place> for &Place {
    fn eq(&self, other: &Place) -> bool {
        self.name.eq(&other.name)
    }
}

impl Eq for Place {}

impl From<&str> for Place {
    fn from(s: &str) -> Self {
        Place {
            name: s.to_string(),
            comment: String::new(),
        }
    }
}

impl Hash for Place {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        self.name.hash(state);
    }
}


impl Transition {
    /// Creates a new transition from a name and a comment
    pub fn new(name: String, comment: String) -> Self {
        Transition { name, comment }
    }

    /// Creates a new transition from a name only
    pub fn new_without_comment(name: String) -> Self {
        let comment = String::new();
        Transition { name, comment }
    }

    /// Creates a vector of size number of transitions wich a names T_0..T_(size-1)
    pub fn new_default_vec(size: usize) -> Vec<Transition> {
        let mut v = Vec::new();
        v.reserve(size);

        for i in 0..size {
            v.push(Transition::new_without_comment(format!(
                "T{}",
                i.to_string()
            )));
        }

        v
    }

    /// Creates an (Post-)Arc from the current transition and the given place with the precised gain
    pub fn link<'a>(&'a self, place: &'a Place, gain: isize) -> Arc<'a> {
        Arc {
            place,
            cost_or_gain: gain,
            transition: self,
        }
    }

    /// Creates an (Post-)Arc from the current transition and the given place with a gain of 1
    pub fn link_gain_1<'a>(&'a self, place: &'a Place) -> Arc<'a> {
        Arc {
            place,
            cost_or_gain: 1,
            transition: self,
        }
    }
}

impl PartialEq for Transition {
    fn eq(&self, other: &Self) -> bool {
        self.name.eq(&other.name)
    }
}

impl From<&str> for Transition {
    fn from(s: &str) -> Self {
        Transition {
            name: s.to_string(),
            comment: String::new(),
        }
    }
}

impl Hash for Transition {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        self.name.hash(state);
    }
}

impl<'a> Arc<'a> {
    /// Creates a new Arc from the given data
    pub fn new(place: &'a Place, transition: &'a Transition, cost_or_gain: isize) -> Self {
        Arc {
            place,
            cost_or_gain,
            transition,
        }
    }

    /// Creates a new Arc with a fixed weight of 1 from the given data
    pub fn new_cost_1(place: &'a Place, transition: &'a Transition) -> Self {
        Arc {
            place,
            cost_or_gain: 1,
            transition,
        }
    }

    /// Check if the current arc is between the given data
    pub fn is_from(&self, place: &Place, transition: &Transition) -> bool {
        self.place == place && self.transition == transition
    }
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn test_eq_simple() {
        let p1 = Place::new_without_comment("P1".to_string());
        let p2 = Place::new_without_comment("P1".to_string());
        assert_eq!(p1, p2);
    }

    #[test]
    fn test_eq_complex() {
        let p1 = Place::new("P1".to_string(), "New place".to_string());
        let p2 = Place::from("P1");
        assert_eq!(p1, p2);
    }

    #[test]
    fn test_is_from() {
        let p1 = Place::from("P1");
        let t1 = Transition::from("T1");
        let arc = Arc::new(&p1, &t1, 1);
        assert!(arc.is_from(&p1, &t1));
    }
}
