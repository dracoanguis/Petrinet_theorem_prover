mod math;
mod petrinet;

use crate::petrinet::arc::*;
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
        post_arcs
    );

    petri2.invariants.unwrap().iter().for_each(|i| println!("{}",i));

}

fn main() {
    test_petri();
}
