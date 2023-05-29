use std::fmt::Debug;

use crate::math::Vector;

#[derive(Debug)]
struct PartialEquation {
    weights: Vector,
    result: isize,
}

impl Equation for PartialEquation {
    fn get_weights(&self) -> Vector {
        self.weights.clone()
    }

    fn get_result(&self) -> isize {
        self.result
    }

    fn get_simplify_factor(&self) -> isize {
        self.weights.gcd()
    }
}


pub trait Equation: Sized+Debug {
    
    fn get_weights(&self) -> Vector;
    fn get_result(&self) -> isize;
    fn get_simplify_factor(&self) -> isize;


    fn verify(&self, solution_vector: &Vector) -> bool {
        (&self.get_weights()*solution_vector).sum() == self.get_result()
    }

    fn solve(&self) -> Option<Vec<Vector>> {

        // We first get the parameters and simplify
        let s_f = self.get_simplify_factor();

        // Sign that full Vector is 0
        if s_f == 0 || self.get_result() == 0 {
            // let possible_sol = Vector::new(self.get_weights().len());

            // if self.verify(&possible_sol){
            //     println!("Self: {:?} Poss_eq: {}",self,possible_sol);
            //     return Some(vec![possible_sol]);
            // }

            return None;
        }

        let w_init = &self.get_weights() / s_f ;
        let r_init = self.get_result() / s_f;

        // println!("self: {:?} eq: {} = {}",self,w_init,r_init);

        let mut sols = Vec::new();

        //We choose the first non-zero
        for i in 0..w_init.len() {
            let w = w_init.index(i);
            if w != 0 {
                for s in (0..=(r_init/w)).rev() {
                    let sub_eq = PartialEquation {
                            weights: w_init.set_at(i, 0),
                            result: r_init-s*w,
                        };

                    let possible_sol = Vector::new(w_init.len()).set_at(i, s);

                    if sub_eq.verify(&possible_sol){
                        println!("Self: {:?} Poss_eq: {}",self,possible_sol);
                        sols.push(possible_sol);
                    }

                    if let Some(sub_sols) = (PartialEquation
                        {
                            weights: w_init.set_at(i, 0),
                            result: r_init-s*w,
                        })
                        .solve()
                        {
                            for sol in sub_sols {
                                // println!("sub_sol: {}",sol);
                                sols.push(sol.set_at(i, s*s_f));
                            }
                        }

                }
                break;
            }
        }
        

        if !sols.is_empty() {
            Some(sols)
        } else {
            None
        }
    }

}

