//! Base for petrinets

use std::hash::Hash;

#[derive(Debug)]
pub struct Place {
    name: String,
    comment: String,
}

#[derive(Debug)]
pub struct Transition {
    name: String,
    comment: String,
}

#[derive(Debug)]
pub struct Arc<'a> {
    place: &'a Place,
    pub(super) cost_or_gain: isize,
    transition: &'a Transition,
}

impl Place {
    pub fn new(name: String, comment: String) -> Self {
        Place { name, comment }
    }

    pub fn new_without_comment(name: String) -> Self {
        let comment = String::new();
        Place { name, comment }
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

#[macro_export]
macro_rules! place {
    ($s:literal) => {
        Place::new_without_comment($s.to_string())
    };
}

impl Transition {
    pub fn new(name: String, comment: String) -> Self {
        Transition { name, comment }
    }

    pub fn new_without_comment(name: String) -> Self {
        let comment = String::new();
        Transition { name, comment }
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

#[macro_export]
macro_rules! trans {
    ($s:literal) => {
        Transition::new_without_comment($s.to_string())
    };
}

impl<'a> Arc<'a> {
    pub fn new(place: &'a Place, transition: &'a Transition, cost_or_gain: isize) -> Self {
        Arc {
            place,
            cost_or_gain,
            transition,
        }
    }

    pub fn new_cost_1(place: &'a Place, transition: &'a Transition) -> Self {
        Arc {
            place,
            cost_or_gain: 1,
            transition,
        }
    }

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
