//! The base implementation of Theorem trait with some subtypes and base types

pub trait Theorem {

    fn check(&self) -> bool;

    fn or<T>(self, other: T) -> OrTheorem<Self,T>
    where 
        Self: Sized,
        T: Theorem,
    {
        OrTheorem { a: self, b: other }
    }

    fn and<T>(self, other: T) -> AndTheorem<Self,T>
    where
        Self: Sized,
        T: Theorem,
    {
        AndTheorem { a: self, b: other }
    }

    fn not(self) -> NotTheorem<Self>
    where
        Self: Sized
    {
        NotTheorem { a: self }
    }

}

pub struct OrTheorem<T,U> {
    a: T,
    b: U,
}

impl<T: Theorem, U: Theorem> Theorem for OrTheorem<T,U> {
    fn check(&self) -> bool {
        self.a.check() ||  self.b.check()
    }
}

pub struct AndTheorem<T,U> {
    a: T,
    b: U,
}

impl<T: Theorem, U: Theorem> Theorem for AndTheorem<T,U> {
    fn check(&self) -> bool {
        self.a.check() && self.b.check()
    }
}

pub struct NotTheorem<T> {
    a: T,
}

impl<T: Theorem> Theorem for NotTheorem<T> {
    fn check(&self) -> bool {
        !self.a.check()
    }
}