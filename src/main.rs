
mod math;

use crate::math::*;

fn main() {
    let m = Matrix::from(
        vec![
            vec![-1,1,1,-1],
            vec![1,-1,-1,1],
            vec![0,0,1,0],
            vec![1,0,0,-1],
            vec![-1,0,0,1]
        ]
    );
    println!("{}",farkas(&m));
}

