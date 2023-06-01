//! Matrix module

use super::vector::Vector;
use std::ops;

#[derive(Debug)]
pub struct Matrix {
    rows: usize,
    cols: usize,
    data: Vec<Vector<isize>>,
}

impl Matrix {
    pub fn new(rows: usize, cols: usize) -> Self {
        let data = vec![Vector::from(vec![0; cols]); rows];
        Matrix { rows, cols, data }
    }

    pub fn identity(size: usize) -> Self {
        let mut data = Vec::new();

        for i in 0..size {
            data.push(vec![0; size - 1]);
            data[i].insert(i, 1);
        }

        Matrix::from(data)
    }

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

    pub fn index(&self, row: usize, col: usize) -> isize {
        if self.cols < col || self.rows < row {
            panic!("Index out of boundary")
        }

        self.data[row][col]
    }

    pub fn is_empty(&self) -> bool {
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
