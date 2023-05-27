mod math;
mod petrinet;

use crate::math::Matrix;
use crate::petrinet::*;

fn test_petri() {
    let places = vec![
        Place::new_without_comment(String::from("p1")),
        Place::new_without_comment(String::from("p2")),
    ];
    let transitions = vec![
        Transition::new_without_comment(String::from("t1")),
        Transition::new_without_comment(String::from("t2")),
        Transition::new_without_comment(String::from("t3")),
    ];
    let pre_arcs = vec![
        Arc::new(&places[0], &transitions[0], 2),
        Arc::new(&places[0], &transitions[1], 1),
        Arc::new(&places[1], &transitions[1], 6),
        Arc::new(&places[1], &transitions[2], 4),
    ];
    let post_arcs = vec![
        Arc::new(&places[0], &transitions[0], 5),
        Arc::new(&places[1], &transitions[0], 7),
        Arc::new(&places[1], &transitions[1], 3),
        Arc::new(&places[0], &transitions[2], 1),
    ];
    let pet = Petrinet::new(
        String::from("Pet1"),
        &places,
        &transitions,
        pre_arcs,
        post_arcs,
    );
    println!("{}", pet.in_matrix);
    println!("{}", pet.out_matrix);
    println!("{}", pet.incidence_matrix);
    println!("{:?}", pet.invariants);
}

fn test_farkas() {
    let m = Matrix::from(vec![
        // vec![-1,1,1,-1],
        // vec![1,-1,-1,1],
        // vec![0,0,1,0],
        // vec![1,0,0,-1],
        // vec![-1,0,0,1]
        vec![-1, 1],
        vec![1, -1],
        vec![1, -1],
    ]);
    let m2 = &m + &m;
    println!("{}", m);
}

fn main() {
    // test_petri();
    test_farkas();
}
