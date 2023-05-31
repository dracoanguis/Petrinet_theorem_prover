mod math;
mod petrinet;

use crate::petrinet::arc::*;
// use crate::petrinet::equation::Equation;
use crate::petrinet::petrinet::*;
use math::Matrix;

fn test_petri() {
    let places = Place::new_default_vec(4);
    let transitions = Transition::new_default_vec(5);
    let pre_arcs = vec![
        Arc::new_cost_1(&places[0], &transitions[0]),
        Arc::new_cost_1(&places[1], &transitions[1]),
        Arc::new_cost_1(&places[2], &transitions[2]),
        Arc::new_cost_1(&places[2], &transitions[3]),
        Arc::new_cost_1(&places[3], &transitions[4]),
    ];
    let post_arcs = vec![
        Arc::new_cost_1(&places[1], &transitions[0]),
        Arc::new_cost_1(&places[2], &transitions[1]),
        Arc::new_cost_1(&places[0], &transitions[2]),
        Arc::new_cost_1(&places[3], &transitions[3]),
        Arc::new_cost_1(&places[2], &transitions[4]),
    ];
    let petri2 = Petrinet::new(
        "Petri2".to_string(),
        &places,
        &transitions,
        pre_arcs,
        post_arcs,
    );

    // println!("{:?}",petri2);

    let mark = petri2
        .new_marking(vec![("P0", 1), ("P1", 1), ("P2", 1), ("P3", 1)])
        .unwrap();

    let i_petri2 = petri2.instanciate(mark);

    // if let Some(i_inv) = i_petri2.i_invariants {
    //     for i in i_inv {
    //         println!("{}", i);
    //         if let Some(sols) = i.solve() {
    //             for s in sols {
    //                 println!("{}", s);
    //             }
    //         }
    //     }
    // }
}

fn main() {
    test_petri();
}
