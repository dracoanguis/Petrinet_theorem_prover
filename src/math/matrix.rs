//! A module defining the mathematical matrix and some operations over it.

use super::vector::Vector;
use std::ops;


/// A matrix of integers with some element wise operations.
/// 
/// It only define the add and sub operations element wise. In this librairy it's used to compute the Farkas algorithm result.
/// 
/// # Example
/// 
/// ```rust
/// use petrinet_theorem_prover::math::Matrix;
/// 
/// let m = Matrix::from(vec![
///     vec![1,1,1],
///     vec![2,2,2],
///     vec![3,3,3],
/// ]);
/// let m2 = Matrix::identity(3);
/// let r1 = Matrix::from(vec![
///     vec![2,1,1],
///     vec![2,3,2],
///     vec![3,3,4],
/// ]);
/// 
/// assert_eq!(&m+&m2,r1);
/// 
/// let m3 = Matrix::from(vec![
///     vec![-1, 0, 1, 0, 0],
///     vec![1, -1, 0, 0, 0],
///     vec![0, 1, -1, -1, 1],
///     vec![0, 0, 0, 1, -1],
/// ]);
/// let r2 = Matrix::from(vec![vec![1, 1, 1, 1]]);
/// 
/// assert_eq!(m3.farkas(),Some(r2));
/// ``` 
#[derive(Debug)]
pub struct Matrix {
    rows: usize,
    cols: usize,
    data: Vec<Vector<isize>>,
}

impl Matrix {
    /// Creates a new Matrix rows x cols filled with 0s.
    pub fn new(rows: usize, cols: usize) -> Self {
        let data = vec![Vector::from(vec![0; cols]); rows];
        Matrix { rows, cols, data }
    }

    /// Returns the identity matrix of the indicated size.
    pub fn identity(size: usize) -> Self {
        let mut data = Vec::new();

        for i in 0..size {
            data.push(vec![0; size - 1]);
            data[i].insert(i, 1);
        }

        Matrix::from(data)
    }

    /// Return an augmented matrix of the first one, and the rhs on the right.
    /// 
    /// # Panics
    /// 
    /// The function panics if the number of rows on the two matrix doesn't match.
    /// 
    /// # Example
    /// ```rust
    /// use petrinet_theorem_prover::math::Matrix;
    /// 
    /// let i = Matrix::identity(2);
    /// let i2 = Matrix::identity(2);
    /// 
    /// let r = Matrix::from(vec![
    ///     vec![1,0,1,0],
    ///     vec![0,1,0,1],
    /// ]);
    /// 
    /// assert_eq!(i.augment(i2),r);
    /// ```
    pub fn augment(&self, rhs: Matrix) -> Matrix {
        if self.rows != rhs.rows {
            panic!("Trying to augment matrix with wrong size")
        }

        let mut new_data: Vec<Vec<isize>> = self.into();
        let rhs: Vec<Vec<isize>> = rhs.into();

        for i in 0..self.rows {
            new_data[i].extend(rhs[i].iter());
        }

        Matrix::from(new_data)
    }

    /// Returns the value of the matrix at the selected row and column.
    /// 
    /// # Panics
    /// 
    /// This fucntions panics if the selected row of column doesn't exists.
    /// 
    pub fn index(&self, row: usize, col: usize) -> isize {
        if self.cols < col || self.rows < row {
            panic!("Index out of boundary")
        }

        self.data[row][col]
    }

    /// Returns the dimension of the matrix in a tuple of the form (r, c) where r is the number of rows and c the number of columns.
    pub fn dim(&self) -> (usize,usize) {
        (self.rows,self.cols)
    }

    fn is_empty(&self) -> bool {
        self.rows == 0 || self.cols == 0
    }

    fn append_row(&mut self, line: Vector<isize>) {
        self.data.push(line);
        self.rows += 1;
    }

    fn remove_row(&mut self, row: usize) {
        self.data.remove(row);
        self.rows -= 1;
    }

    fn truncate_col(&mut self, n_col: usize) {
        self.data.iter_mut().for_each(|l| {
            l.rotate_right(self.cols - n_col);
            l.truncate(self.cols - n_col)
        });
        self.cols -= n_col;
    }


    /// This function apply the Farkas algorithm to the given matrix and return an optional Matrix, where the lines are the computed invariants, if the solution exists.
    /// 
    /// The Farkas algorithm is used in our case to find the minimal set of P-Invariants over a given petrinet, see Petrinet::petrinet::Petrinet.
    /// The resulting invariants are given in forms of Lines int the result Matrix.
    pub fn farkas(&self) -> Option<Matrix> {
        let n_col = self.cols;
        let n_row = self.rows;

        let mut d = self.augment(Matrix::identity(n_row));

        // println!("{}",d);

        for col in 0..n_col {
            let c_row = d.rows;

            for f_row in 0..c_row {
                let d_1 = d.index(f_row, col);

                if d_1 == 0 {
                    continue;
                }

                for s_row in f_row..c_row {
                    let d_2 = d.index(s_row, col);
                    if d_2 == 0 {
                        continue;
                    }
                    if d_1.signum() != d_2.signum() {
                        let mut new_line =
                            &(&d.data[f_row] * d_2.abs()) + &(&d.data[s_row] * d_1.abs());
                        new_line = &new_line / new_line.gcd();
                        // println!("{}:{} with {} result {:?}",col,f_row,s_row,new_line);
                        d.append_row(new_line);
                    }
                }
            }

            for row in (0..c_row).rev() {
                if d.index(row, col) != 0 {
                    d.remove_row(row);
                }
            }
            // println!("{}",d);
        }

        d.truncate_col(n_col);
        if d.is_empty() {
            return None;
        }
        Some(d)
    }


    /// This functions returns a vec consisting of each rows of the given matrix, a row being a Vector over isize.
    pub fn get_vectors(&self) -> Vec<Vector<isize>> {
        self.data.clone()
    }
}

impl ops::Add<&Matrix> for &Matrix {
    type Output = Matrix;

    fn add(self, rhs: &Matrix) -> Self::Output {
        if self.rows != rhs.rows || self.cols != rhs.cols {
            panic!("Trying to add Matrix of different size")
        }

        let new_data = self
            .data
            .iter()
            .zip(rhs.data.iter())
            .map(|(l, r)| l + r)
            .collect();

        Matrix {
            rows: self.rows,
            cols: self.cols,
            data: new_data,
        }
    }
}

impl ops::Sub<&Matrix> for &Matrix {
    type Output = Matrix;

    fn sub(self, rhs: &Matrix) -> Self::Output {
        if self.rows != rhs.rows || self.cols != rhs.cols {
            panic!("Trying to add Matrix of different size")
        }

        let new_data = self
            .data
            .iter()
            .zip(rhs.data.iter())
            .map(|(l, r)| l - r)
            .collect();

        Matrix {
            rows: self.rows,
            cols: self.cols,
            data: new_data,
        }
    }
}

// With taking ownerhip and then freeing memory
impl ops::Add<Matrix> for Matrix {
    type Output = Matrix;

    fn add(self, rhs: Matrix) -> Self::Output {
        &self + &rhs
    }
}

impl ops::Sub<Matrix> for Matrix {
    type Output = Matrix;

    fn sub(self, rhs: Matrix) -> Self::Output {
        &self - &rhs
    }
}

impl std::fmt::Display for Matrix {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        // write!(f,"rows:{} cols:{}\n",self.rows,self.cols)?;
        for line in &self.data {
            write!(f, "{}\n", line)?
        }
        Ok(())
    }
}

impl PartialEq for Matrix {
    fn eq(&self, other: &Self) -> bool {
        self.data
            .iter()
            .zip(other.data.iter())
            .all(|(s, o)| s.eq(o))
            && self.cols == other.cols
            && self.rows == other.rows
    }
}

impl From<Vec<Vec<isize>>> for Matrix {
    fn from(data: Vec<Vec<isize>>) -> Self {
        let rows = data.len();
        let cols = data[0].len();
        let data = data.into_iter().map(|v| Vector::from(v)).collect();
        Matrix { rows, cols, data }
    }
}

impl From<&Vec<Vec<isize>>> for Matrix {
    fn from(data: &Vec<Vec<isize>>) -> Self {
        let rows = data.len();
        let cols = data[0].len();
        let data = data.clone().into_iter().map(|v| Vector::from(v)).collect();
        Matrix { rows, cols, data }
    }
}

impl Into<Vec<Vec<isize>>> for &Matrix {
    fn into(self) -> Vec<Vec<isize>> {
        self.data.iter().map(|v| v.into()).collect()
    }
}

impl Into<Vec<Vec<isize>>> for Matrix {
    fn into(self) -> Vec<Vec<isize>> {
        self.data.into_iter().map(|v| v.into()).collect()
    }
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn test_farkas_1() {
        let m = Matrix::from(vec![vec![-1, 1], vec![1, -1], vec![1, -1]]);
        let m2 = Matrix::from(vec![vec![1, 1, 0], vec![1, 0, 1]]);
        assert_eq!(m.farkas(), Some(m2));
    }

    #[test]
    fn test_farkas_2() {
        let m = Matrix::from(vec![
            vec![-1, 0, 1, 0, 0],
            vec![1, -1, 0, 0, 0],
            vec![0, 1, -1, -1, 1],
            vec![0, 0, 0, 1, -1],
        ]);
        let r = Matrix::from(vec![vec![1, 1, 1, 1]]);
        assert_eq!(m.farkas(), Some(r));
    }
}
