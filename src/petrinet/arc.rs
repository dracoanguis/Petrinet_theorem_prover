//! Base for petrinets

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

impl<'a> Arc<'a> {
    pub fn new(place: &'a Place, transition: &'a Transition, cost_or_gain: isize) -> Self {
        Arc {
            place,
            cost_or_gain,
            transition,
        }
    }

    pub fn is_from(&self, place: &Place, transition: &Transition) -> bool {
        self.place == place && self.transition == transition
    }
}
