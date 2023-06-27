

pub trait Set {
    type Item;
    
    fn is_empty(&self) -> bool;

    fn union<T>(self, other: T) -> UnionSet<Self, T>
    where
        Self:Sized,
        T: Set,
    {
        UnionSet::new(self, other)
    }

    fn intersection<T>(self, other: T) -> IntersectionSet<Self, T>
    where
        Self: Sized,
        T: Set,
    {
        IntersectionSet::new(self, other)
    }

    fn cartesian<T>(self, other: T) -> CartesianSet<Self, T>
    where
        Self: Sized,
        T: Set,
    {
        CartesianSet::new(self, other)
    }


}

pub struct UnionSet<T, U> {
    a: T,
    b: U,
}

impl<T: Set, U: Set> UnionSet<T,U> {
    fn new(a: T, b: U) -> Self {
        UnionSet { a, b }
    }
} 


pub struct IntersectionSet<T,U> {
    a: T,
    b: U,
}

impl<T: Set, U: Set> IntersectionSet<T,U> {
    fn new(a: T, b: U) -> Self {
        IntersectionSet { a, b }
    }
}

pub struct CartesianSet<T, U> {
    a: T,
    b: U,
}

impl<T: Set, U: Set> CartesianSet<T, U> {
    fn new(a: T, b: U) -> Self {
        CartesianSet { a, b }
    }
}