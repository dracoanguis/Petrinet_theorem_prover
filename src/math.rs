//! Math module

use std::ops;

#[derive(Debug)]
pub struct Matrix {
    rows: usize,
    cols: usize,
    data: Vec<Vec<isize>>
}

impl Matrix {
    pub fn new(rows:usize,cols:usize) -> Self {
        let data = vec![vec![0;cols];rows];
        Matrix {rows, cols,data}
    }

    pub fn from(data:Vec<Vec<isize>>) -> Self {
        let rows = data.len();
        let cols = data[0].len();
        Matrix { rows, cols, data}
    }

    pub fn identity(size:usize) -> Self {
    
        let rows = size;
        let cols = size;
        let mut data = Vec::new();

        for i in 0..size {
            data.push(vec![0;cols-1]);
            data[i].insert(i, 1);
        }

        Matrix { rows, cols, data}
    }

    pub fn get_data(&self) -> Vec<Vec<isize>> {
        self.data.iter().map(|l| l.clone()).collect()
    }

    pub fn augment(&self, rhs:Matrix) -> Matrix {
        if self.rows != rhs.rows {
            panic!("Trying to augment matrix with wrong size")
        }

        let mut new_data = self.data.clone();
        
        for i in 0..self.rows {
            new_data[i].extend(rhs.data[i].iter());
        }

        Matrix { rows: self.rows, cols: 2*self.cols, data: new_data }
    }

    pub fn index(&self,row:usize,col:usize) -> isize {
        if self.cols < col || self.rows < row {
            panic!("Index out of boundary")
        }

        self.data[row][col]
    }

    pub fn is_empty(&self) -> bool {
        self.rows == 0 || self.cols == 0
    }

    fn append_row(&mut self,line:Vec<isize>) {
        self.data.push(line);
        self.rows += 1;
    }

    fn remove_row(&mut self,row:usize) {
        self.data.remove(row);
        self.rows -= 1;
    }

    fn truncate_col(&mut self,n_col:usize) {
        self.data.iter_mut().for_each(|l| {l.rotate_right(n_col+1); l.truncate(self.cols-n_col+1)});
        self.cols -= n_col;
    }

    pub fn farkas(&self) -> Option<Matrix> {

        let n_col = self.cols;
        let n_row = self.rows;

        let mut d = self.augment(Matrix::identity(n_row));

        // println!("{}",d);

        for col in 0..n_col {
            let c_row = d.rows;

            for f_row in  0..c_row {

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
                        let mut new_line = add_vectors(&mul_number_vector(d_2.abs(), &d.data[f_row]),&mul_number_vector(d_1.abs(), &d.data[s_row]));
                        new_line = div_number_vector(gcd_vec(&new_line), &new_line);
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

}

// Without taking ownership
impl ops::Add<&Matrix> for &Matrix {
    type Output = Matrix;

    fn add(self, rhs: &Matrix) -> Self::Output {
        if self.rows != rhs.rows || self.cols != rhs.cols {
            panic!("Trying to add Matrix of different size")
        }

        // Hell line going brrr in other words iterate over the matrice vectors to add vector by vector, an add them using the same method
        let new_data = self.data.iter().zip(rhs.data.iter()).map(|(l,r)| l.iter().zip(r.iter()).map(|(&l,&r)| l+r ).collect()).collect();
        

        Matrix {rows:self.rows,cols:self.cols,data:new_data}
    }
}

impl ops::Sub<&Matrix> for &Matrix {
    type Output = Matrix;

    fn sub(self, rhs: &Matrix) -> Self::Output {
        if self.rows != rhs.rows || self.cols != rhs.cols {
            panic!("Trying to add Matrix of different size")
        }

        // Hell line going brrr, same as above but for substraction
        let new_data = self.data.iter().zip(rhs.data.iter())
            .map(|(l,r)| l.iter().zip(r.iter())
                .map(|(&l,&r)| l-r )
                .collect())
            .collect();
        
        Matrix {rows:self.rows,cols:self.cols,data:new_data}
    }
}

// With taking ownerhip and then freeing memory
impl ops::Add<Matrix> for Matrix {
    type Output = Matrix;

    fn add(self,rhs: Matrix) -> Self::Output {
        &self+&rhs
    }
}

impl ops::Sub<Matrix> for Matrix {
    type Output = Matrix;

    fn sub(self,rhs: Matrix) -> Self::Output {
        &self-&rhs
    }
}

impl std::fmt::Display for Matrix {
    fn fmt(&self,f: &mut std::fmt::Formatter) -> std::fmt::Result {
        // write!(f,"rows:{} cols:{}\n",self.rows,self.cols)?;
        for line in &self.data {
            write!(f,"{:?}\n",line)?
        }
        Ok(())
    }
}




pub fn mul_number_vector(multiplier:isize, multiplied: &Vec<isize>) -> Vec<isize> {
    multiplied.iter().map(|r| multiplier*r).collect()
}

pub fn div_number_vector(divisor:isize, divided: &Vec<isize>) -> Vec<isize> {
    divided.iter().map(|r| r/divisor).collect()
}

pub fn add_vectors(l:&Vec<isize>,r:&Vec<isize>) -> Vec<isize> {
    l.iter().zip(r.iter()).map(|(&l,&r)| l+r ).collect()
}

fn gcd_vec(v:&Vec<isize>) -> isize {

    v.clone().into_iter()
    .reduce(|a,b| 
        gcd(a.unsigned_abs(),b.unsigned_abs()) as isize
    ).unwrap()
}

fn gcd(a:usize, b:usize) -> usize {
    if a == b {
        return a;
    }
    if a == 0{
        return b;
    }
    if b == 0 {
        return a;
    }
    if a%2 == 0 {
        if b%2 == 0{
            return gcd(a>>1,b>>1)<<1;
        }
        return gcd(a>>1,b);
    }
    if b%2 == 0 {
        return gcd(a,b>>1);
    }
    if a > b {
        return gcd(a.abs_diff(b)>>1,b);
    }
    return gcd(a,b.abs_diff(a)>>1);
}

