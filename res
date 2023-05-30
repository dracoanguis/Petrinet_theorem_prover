
running 17 tests
test math::vector::test::test_div ... ok
test math::matrix::test::test_farkas_2 ... ok
test math::vector::test::test_add ... ok
test math::vector::test::test_equality ... ok
test math::vector::test::test_div_vec ... ok
test math::vector::test::test_mul_i ... ok
test math::vector::test::test_mul_vec ... ok
test math::vector::test::test_ne ... ok
test petrinet::arc::test::test_eq_complex ... ok
test petrinet::arc::test::test_eq_simple ... ok
test math::vector::test::test_sub ... ok
test petrinet::arc::test::test_is_from ... ok
test math::matrix::test::test_farkas_1 ... ok
test petrinet::petrinet::test::test_invariants_solve ... ok
test petrinet::petrinet::test::test_petrinet_computed_values_1 ... ok
test petrinet::petrinet::test::test_petrinet_computed_values_2 ... ok
test petrinet::theorem::test::test_equation ... FAILED

failures:

---- petrinet::theorem::test::test_equation stdout ----
P0+P4
P2+P3
P1+4P3+P4
[ 4  4  1  0  0 ]
[ 4  4  1  0  0 ]
[ 4  4  1  0  0 ]
P0+P4 = 4
P2+P3 = 1
P1+4P3+P4 = 4
theorem: sol: {}
Theorem:P3 = 0 sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }, Vector { data: [0, 1, 0, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 0, 2, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 1, 1, 0, 0] }, Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 2, 0, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 1, 0, 1] }, Vector { data: [0, 0, 3, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 1, 0, 1] }, Vector { data: [0, 3, 0, 0, 0] }, Vector { data: [0, 1, 2, 0, 0] }, Vector { data: [0, 2, 1, 0, 0] }, Vector { data: [0, 1, 0, 0, 1] }, Vector { data: [0, 0, 3, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 0, 2, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 3, 1, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 1, 3, 0, 0] }, Vector { data: [0, 1, 1, 0, 1] }, Vector { data: [0, 2, 0, 0, 1] }, Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 2, 2, 0, 0] }, Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 4, 0, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 0, 2, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 1, 0, 1] }, Vector { data: [0, 0, 3, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 4, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 1, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 1, 0, 0, 2] }, Vector { data: [0, 5, 0, 0, 0] }, Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 3, 2, 0, 0] }, Vector { data: [0, 4, 1, 0, 0] }, Vector { data: [0, 2, 1, 0, 1] }, Vector { data: [0, 1, 4, 0, 0] }, Vector { data: [0, 2, 3, 0, 0] }, Vector { data: [0, 1, 2, 0, 1] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 3, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 0, 2, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 1, 0, 1] }, Vector { data: [0, 0, 3, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 0, 4, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 3, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 0, 1, 1, 0] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 6, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 2, 0, 0, 2] }, Vector { data: [0, 1, 1, 0, 2] }, Vector { data: [0, 2, 2, 0, 1] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 6, 0, 0, 0] }, Vector { data: [0, 4, 2, 0, 0] }, Vector { data: [0, 3, 3, 0, 0] }, Vector { data: [0, 3, 1, 0, 1] }, Vector { data: [0, 2, 4, 0, 0] }, Vector { data: [0, 4, 0, 0, 1] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 1, 5, 0, 0] }, Vector { data: [0, 0, 1, 1, 0] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 5, 1, 0, 0] }, Vector { data: [0, 1, 3, 0, 1] }, Vector { data: [0, 1, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 0, 2, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 3, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 1, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 0, 3, 0, 2] }, Vector { data: [0, 0, 7, 0, 0] }, Vector { data: [0, 0, 2, 1, 0] }, Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 1, 2, 0, 2] }, Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 5, 2, 0, 0] }, Vector { data: [0, 2, 5, 0, 0] }, Vector { data: [0, 0, 2, 1, 0] }, Vector { data: [0, 0, 3, 0, 2] }, Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 0, 1, 1] }, Vector { data: [0, 3, 0, 0, 2] }, Vector { data: [0, 4, 3, 0, 0] }, Vector { data: [0, 1, 4, 0, 1] }, Vector { data: [0, 3, 2, 0, 1] }, Vector { data: [0, 5, 0, 0, 1] }, Vector { data: [0, 2, 0, 1, 0] }, Vector { data: [0, 3, 4, 0, 0] }, Vector { data: [0, 6, 1, 0, 0] }, Vector { data: [0, 2, 3, 0, 1] }, Vector { data: [0, 1, 0, 0, 3] }, Vector { data: [0, 1, 6, 0, 0] }, Vector { data: [0, 4, 1, 0, 1] }, Vector { data: [0, 1, 1, 1, 0] }, Vector { data: [0, 0, 7, 0, 0] }, Vector { data: [0, 7, 0, 0, 0] }, Vector { data: [0, 2, 1, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 0, 2, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 4, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 1, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 0, 1, 1] }, Vector { data: [0, 0, 2, 1, 0] }, Vector { data: [0, 0, 7, 0, 0] }, Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 0, 3, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 4 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }, Vector { data: [0, 0, 3, 1, 0] }, Vector { data: [0, 0, 4, 0, 2] }, Vector { data: [0, 0, 8, 0, 0] }, Vector { data: [0, 0, 1, 1, 1] }, Vector { data: [0, 0, 6, 0, 1] }, Vector { data: [0, 0, 2, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 8 } sols:{Vector { data: [0, 3, 5, 0, 0] }, Vector { data: [0, 1, 1, 0, 3] }, Vector { data: [0, 0, 2, 0, 3] }, Vector { data: [0, 8, 0, 0, 0] }, Vector { data: [0, 3, 3, 0, 1] }, Vector { data: [0, 4, 2, 0, 1] }, Vector { data: [0, 6, 2, 0, 0] }, Vector { data: [0, 3, 1, 0, 2] }, Vector { data: [0, 0, 1, 1, 1] }, Vector { data: [0, 2, 6, 0, 0] }, Vector { data: [0, 2, 4, 0, 1] }, Vector { data: [0, 2, 1, 1, 0] }, Vector { data: [0, 0, 3, 1, 0] }, Vector { data: [0, 0, 6, 0, 1] }, Vector { data: [0, 0, 8, 0, 0] }, Vector { data: [0, 2, 0, 0, 3] }, Vector { data: [0, 5, 3, 0, 0] }, Vector { data: [0, 1, 5, 0, 1] }, Vector { data: [0, 0, 0, 0, 4] }, Vector { data: [0, 1, 2, 1, 0] }, Vector { data: [0, 5, 1, 0, 1] }, Vector { data: [0, 7, 1, 0, 0] }, Vector { data: [0, 6, 0, 0, 1] }, Vector { data: [0, 4, 4, 0, 0] }, Vector { data: [0, 4, 0, 0, 2] }, Vector { data: [0, 2, 2, 0, 2] }, Vector { data: [0, 1, 0, 1, 1] }, Vector { data: [0, 0, 4, 0, 2] }, Vector { data: [0, 1, 7, 0, 0] }, Vector { data: [0, 3, 0, 1, 0] }, Vector { data: [0, 1, 3, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 0, 1, 1, 0] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 2, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 0, 7, 0, 0] }, Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 0, 1, 1] }, Vector { data: [0, 0, 2, 1, 0] }, Vector { data: [0, 0, 3, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 4 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 2, 0, 3] }, Vector { data: [0, 0, 1, 1, 1] }, Vector { data: [0, 0, 0, 0, 4] }, Vector { data: [0, 0, 4, 0, 2] }, Vector { data: [0, 0, 3, 1, 0] }, Vector { data: [0, 0, 6, 0, 1] }, Vector { data: [0, 0, 8, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 4 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 9 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 9 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 9 } sols:{Vector { data: [0, 0, 0, 1, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 9 } sols:{Vector { data: [0, 0, 7, 0, 1] }, Vector { data: [0, 0, 3, 0, 3] }, Vector { data: [0, 0, 9, 0, 0] }, Vector { data: [0, 0, 2, 1, 1] }, Vector { data: [0, 0, 4, 1, 0] }, Vector { data: [0, 0, 5, 0, 2] }, Vector { data: [0, 0, 1, 0, 4] }, Vector { data: [0, 0, 0, 1, 2] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 9 } sols:{Vector { data: [0, 1, 0, 0, 4] }, Vector { data: [0, 0, 2, 1, 1] }, Vector { data: [0, 0, 4, 1, 0] }, Vector { data: [0, 8, 1, 0, 0] }, Vector { data: [0, 5, 0, 0, 2] }, Vector { data: [0, 3, 2, 0, 2] }, Vector { data: [0, 0, 9, 0, 0] }, Vector { data: [0, 4, 5, 0, 0] }, Vector { data: [0, 3, 0, 0, 3] }, Vector { data: [0, 0, 7, 0, 1] }, Vector { data: [0, 4, 3, 0, 1] }, Vector { data: [0, 2, 5, 0, 1] }, Vector { data: [0, 2, 7, 0, 0] }, Vector { data: [0, 2, 1, 0, 3] }, Vector { data: [0, 1, 2, 0, 3] }, Vector { data: [0, 7, 0, 0, 1] }, Vector { data: [0, 1, 3, 1, 0] }, Vector { data: [0, 0, 0, 1, 2] }, Vector { data: [0, 5, 4, 0, 0] }, Vector { data: [0, 7, 2, 0, 0] }, Vector { data: [0, 5, 2, 0, 1] }, Vector { data: [0, 9, 0, 0, 0] }, Vector { data: [0, 6, 3, 0, 0] }, Vector { data: [0, 4, 1, 0, 2] }, Vector { data: [0, 0, 3, 0, 3] }, Vector { data: [0, 0, 1, 0, 4] }, Vector { data: [0, 4, 0, 1, 0] }, Vector { data: [0, 3, 1, 1, 0] }, Vector { data: [0, 6, 1, 0, 1] }, Vector { data: [0, 2, 0, 1, 1] }, Vector { data: [0, 3, 4, 0, 1] }, Vector { data: [0, 3, 6, 0, 0] }, Vector { data: [0, 1, 4, 0, 2] }, Vector { data: [0, 0, 5, 0, 2] }, Vector { data: [0, 2, 3, 0, 2] }, Vector { data: [0, 1, 1, 1, 1] }, Vector { data: [0, 2, 2, 1, 0] }, Vector { data: [0, 1, 6, 0, 1] }, Vector { data: [0, 1, 8, 0, 0] }}
self:InstanciedInvariant { equation: Invariant { places: [Place { name: "P0", comment: "" }, Place { name: "P1", comment: "" }, Place { name: "P2", comment: "" }, Place { name: "P3", comment: "" }, Place { name: "P4", comment: "" }], weights: Vector { data: [1, 1, 1, 5, 2] } }, result: 9 } sols:{Vector { data: [1, 3, 5, 0, 0] }, Vector { data: [1, 0, 8, 0, 0] }, Vector { data: [2, 0, 0, 1, 1] }, Vector { data: [0, 0, 2, 1, 1] }, Vector { data: [2, 2, 5, 0, 0] }, Vector { data: [3, 2, 4, 0, 0] }, Vector { data: [2, 0, 7, 0, 0] }, Vector { data: [0, 5, 0, 0, 2] }, Vector { data: [3, 4, 0, 0, 1] }, Vector { data: [1, 3, 1, 0, 2] }, Vector { data: [4, 1, 4, 0, 0] }, Vector { data: [1, 1, 2, 1, 0] }, Vector { data: [2, 1, 0, 0, 3] }, Vector { data: [0, 6, 1, 0, 1] }, Vector { data: [3, 0, 1, 1, 0] }, Vector { data: [2, 1, 6, 0, 0] }, Vector { data: [3, 2, 0, 0, 2] }, Vector { data: [4, 0, 0, 1, 0] }, Vector { data: [6, 0, 1, 0, 1] }, Vector { data: [4, 1, 2, 0, 1] }, Vector { data: [3, 1, 5, 0, 0] }, Vector { data: [1, 8, 0, 0, 0] }, Vector { data: [1, 2, 4, 0, 1] }, Vector { data: [2, 2, 3, 0, 1] }, Vector { data: [1, 7, 1, 0, 0] }, Vector { data: [7, 1, 1, 0, 0] }, Vector { data: [0, 8, 1, 0, 0] }, Vector { data: [5, 1, 3, 0, 0] }, Vector { data: [4, 0, 1, 0, 2] }, Vector { data: [0, 2, 3, 0, 2] }, Vector { data: [4, 0, 3, 0, 1] }, Vector { data: [1, 6, 2, 0, 0] }, Vector { data: [0, 0, 9, 0, 0] }, Vector { data: [4, 3, 0, 0, 1] }, Vector { data: [1, 1, 5, 0, 1] }, Vector { data: [8, 1, 0, 0, 0] }, Vector { data: [0, 2, 7, 0, 0] }, Vector { data: [0, 4, 1, 0, 2] }, Vector { data: [6, 2, 1, 0, 0] }, Vector { data: [2, 0, 2, 1, 0] }, Vector { data: [2, 5, 0, 0, 1] }, Vector { data: [0, 1, 3, 1, 0] }, Vector { data: [0, 4, 3, 0, 1] }, Vector { data: [0, 6, 3, 0, 0] }, Vector { data: [0, 1, 1, 1, 1] }, Vector { data: [7, 0, 2, 0, 0] }, Vector { data: [1, 3, 0, 1, 0] }, Vector { data: [4, 1, 0, 0, 2] }, Vector { data: [9, 0, 0, 0, 0] }, Vector { data: [5, 2, 2, 0, 0] }, Vector { data: [2, 0, 5, 0, 1] }, Vector { data: [3, 2, 2, 0, 1] }, Vector { data: [1, 0, 3, 1, 0] }, Vector { data: [0, 1, 0, 0, 4] }, Vector { data: [5, 0, 0, 0, 2] }, Vector { data: [1, 0, 6, 0, 1] }, Vector { data: [3, 1, 1, 0, 2] }, Vector { data: [1, 5, 1, 0, 1] }, Vector { data: [2, 1, 1, 1, 0] }, Vector { data: [1, 4, 4, 0, 0] }, Vector { data: [0, 2, 5, 0, 1] }, Vector { data: [4, 2, 1, 0, 1] }, Vector { data: [3, 1, 3, 0, 1] }, Vector { data: [1, 0, 1, 1, 1] }, Vector { data: [0, 3, 6, 0, 0] }, Vector { data: [2, 4, 3, 0, 0] }, Vector { data: [0, 7, 2, 0, 0] }, Vector { data: [1, 4, 0, 0, 2] }, Vector { data: [0, 1, 4, 0, 2] }, Vector { data: [3, 6, 0, 0, 0] }, Vector { data: [7, 2, 0, 0, 0] }, Vector { data: [1, 6, 0, 0, 1] }, Vector { data: [4, 3, 2, 0, 0] }, Vector { data: [0, 0, 5, 0, 2] }, Vector { data: [0, 1, 8, 0, 0] }, Vector { data: [2, 3, 0, 0, 2] }, Vector { data: [2, 7, 0, 0, 0] }, Vector { data: [2, 0, 1, 0, 3] }, Vector { data: [0, 1, 6, 0, 1] }, Vector { data: [6, 3, 0, 0, 0] }, Vector { data: [7, 0, 0, 0, 1] }, Vector { data: [5, 0, 4, 0, 0] }, Vector { data: [1, 1, 1, 0, 3] }, Vector { data: [0, 0, 3, 0, 3] }, Vector { data: [2, 2, 0, 1, 0] }, Vector { data: [2, 4, 1, 0, 1] }, Vector { data: [1, 2, 0, 0, 3] }, Vector { data: [0, 0, 7, 0, 1] }, Vector { data: [0, 7, 0, 0, 1] }, Vector { data: [4, 5, 0, 0, 0] }, Vector { data: [5, 3, 1, 0, 0] }, Vector { data: [3, 0, 2, 0, 2] }, Vector { data: [1, 1, 3, 0, 2] }, Vector { data: [0, 3, 0, 0, 3] }, Vector { data: [1, 2, 1, 1, 0] }, Vector { data: [0, 0, 1, 0, 4] }, Vector { data: [1, 1, 0, 1, 1] }, Vector { data: [0, 5, 4, 0, 0] }, Vector { data: [3, 1, 0, 1, 0] }, Vector { data: [2, 1, 4, 0, 1] }, Vector { data: [1, 0, 0, 0, 4] }, Vector { data: [2, 5, 2, 0, 0] }, Vector { data: [5, 1, 1, 0, 1] }, Vector { data: [8, 0, 1, 0, 0] }, Vector { data: [1, 2, 6, 0, 0] }, Vector { data: [2, 0, 3, 0, 2] }, Vector { data: [2, 6, 1, 0, 0] }, Vector { data: [1, 2, 2, 0, 2] }, Vector { data: [0, 1, 2, 0, 3] }, Vector { data: [0, 9, 0, 0, 0] }, Vector { data: [0, 0, 4, 1, 0] }, Vector { data: [0, 2, 2, 1, 0] }, Vector { data: [3, 4, 2, 0, 0] }, Vector { data: [3, 5, 1, 0, 0] }, Vector { data: [3, 0, 6, 0, 0] }, Vector { data: [3, 0, 4, 0, 1] }, Vector { data: [4, 4, 1, 0, 0] }, Vector { data: [4, 0, 5, 0, 0] }, Vector { data: [0, 2, 1, 0, 3] }, Vector { data: [0, 3, 4, 0, 1] }, Vector { data: [2, 1, 2, 0, 2] }, Vector { data: [5, 4, 0, 0, 0] }, Vector { data: [3, 3, 1, 0, 1] }, Vector { data: [1, 4, 2, 0, 1] }, Vector { data: [0, 4, 5, 0, 0] }, Vector { data: [0, 2, 0, 1, 1] }, Vector { data: [6, 1, 2, 0, 0] }, Vector { data: [1, 0, 2, 0, 3] }, Vector { data: [1, 5, 3, 0, 0] }, Vector { data: [1, 3, 3, 0, 1] }, Vector { data: [0, 5, 2, 0, 1] }, Vector { data: [1, 0, 4, 0, 2] }, Vector { data: [5, 2, 0, 0, 1] }, Vector { data: [0, 3, 1, 1, 0] }, Vector { data: [2, 3, 2, 0, 1] }, Vector { data: [6, 1, 0, 0, 1] }, Vector { data: [2, 3, 4, 0, 0] }, Vector { data: [3, 0, 0, 0, 3] }, Vector { data: [2, 2, 1, 0, 2] }, Vector { data: [3, 3, 3, 0, 0] }, Vector { data: [1, 1, 7, 0, 0] }, Vector { data: [6, 0, 3, 0, 0] }, Vector { data: [5, 0, 2, 0, 1] }, Vector { data: [0, 0, 0, 1, 2] }, Vector { data: [0, 4, 0, 1, 0] }, Vector { data: [0, 3, 2, 0, 2] }, Vector { data: [4, 2, 3, 0, 0] }}
{}
theorem: sol: {}
Theorem:P4 = 0 sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }, Vector { data: [0, 1, 0, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 2, 0, 0, 0] }, Vector { data: [0, 1, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }, Vector { data: [0, 0, 2, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 1, 0, 1] }, Vector { data: [0, 0, 3, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 2, 1, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }, Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 3, 0, 0, 0] }, Vector { data: [0, 1, 2, 0, 0] }, Vector { data: [0, 1, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 3, 1, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 2, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 2, 0, 0, 1] }, Vector { data: [0, 4, 0, 0, 0] }, Vector { data: [0, 1, 3, 0, 0] }, Vector { data: [0, 1, 1, 0, 1] }, Vector { data: [0, 0, 4, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 5, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 1, 0, 0, 2] }, Vector { data: [0, 2, 1, 0, 1] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 3, 0, 0, 1] }, Vector { data: [0, 1, 4, 0, 0] }, Vector { data: [0, 1, 2, 0, 1] }, Vector { data: [0, 4, 1, 0, 0] }, Vector { data: [0, 3, 2, 0, 0] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 2, 3, 0, 0] }, Vector { data: [0, 5, 0, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 1, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 1, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 1, 3, 0, 1] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 6, 0, 0, 0] }, Vector { data: [0, 2, 0, 0, 2] }, Vector { data: [0, 2, 4, 0, 0] }, Vector { data: [0, 1, 1, 0, 2] }, Vector { data: [0, 4, 2, 0, 0] }, Vector { data: [0, 3, 1, 0, 1] }, Vector { data: [0, 0, 1, 1, 0] }, Vector { data: [0, 1, 5, 0, 0] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 3, 3, 0, 0] }, Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 1, 0, 1, 0] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 5, 1, 0, 0] }, Vector { data: [0, 2, 2, 0, 1] }, Vector { data: [0, 4, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 1, 0, 2] }, Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 1, 1, 0] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 0, 2, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 0, 2, 1, 0] }, Vector { data: [0, 0, 3, 0, 2] }, Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 0, 1, 1] }, Vector { data: [0, 0, 7, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 7, 0, 0, 0] }, Vector { data: [0, 5, 0, 0, 1] }, Vector { data: [0, 2, 5, 0, 0] }, Vector { data: [0, 1, 1, 1, 0] }, Vector { data: [0, 1, 2, 0, 2] }, Vector { data: [0, 0, 2, 1, 0] }, Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 0, 1, 1] }, Vector { data: [0, 4, 3, 0, 0] }, Vector { data: [0, 3, 2, 0, 1] }, Vector { data: [0, 2, 1, 0, 2] }, Vector { data: [0, 3, 0, 0, 2] }, Vector { data: [0, 0, 3, 0, 2] }, Vector { data: [0, 5, 2, 0, 0] }, Vector { data: [0, 6, 1, 0, 0] }, Vector { data: [0, 1, 6, 0, 0] }, Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 4, 1, 0, 1] }, Vector { data: [0, 3, 4, 0, 0] }, Vector { data: [0, 1, 0, 0, 3] }, Vector { data: [0, 1, 4, 0, 1] }, Vector { data: [0, 2, 3, 0, 1] }, Vector { data: [0, 2, 0, 1, 0] }, Vector { data: [0, 0, 7, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 3, 0, 0] }, Vector { data: [0, 0, 1, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 0, 0, 2] }, Vector { data: [0, 0, 2, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 1, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 1, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 0, 1, 1] }, Vector { data: [0, 0, 7, 0, 0] }, Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 0, 3, 0, 2] }, Vector { data: [0, 0, 2, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 4 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 6, 0, 1] }, Vector { data: [0, 0, 4, 0, 2] }, Vector { data: [0, 0, 1, 1, 1] }, Vector { data: [0, 0, 0, 0, 4] }, Vector { data: [0, 0, 8, 0, 0] }, Vector { data: [0, 0, 3, 1, 0] }, Vector { data: [0, 0, 2, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 8 } sols:{Vector { data: [0, 1, 5, 0, 1] }, Vector { data: [0, 4, 4, 0, 0] }, Vector { data: [0, 8, 0, 0, 0] }, Vector { data: [0, 0, 1, 1, 1] }, Vector { data: [0, 0, 4, 0, 2] }, Vector { data: [0, 0, 3, 1, 0] }, Vector { data: [0, 6, 2, 0, 0] }, Vector { data: [0, 5, 3, 0, 0] }, Vector { data: [0, 4, 0, 0, 2] }, Vector { data: [0, 3, 5, 0, 0] }, Vector { data: [0, 1, 1, 0, 3] }, Vector { data: [0, 2, 4, 0, 1] }, Vector { data: [0, 5, 1, 0, 1] }, Vector { data: [0, 1, 0, 1, 1] }, Vector { data: [0, 3, 1, 0, 2] }, Vector { data: [0, 0, 0, 0, 4] }, Vector { data: [0, 1, 7, 0, 0] }, Vector { data: [0, 2, 0, 0, 3] }, Vector { data: [0, 3, 0, 1, 0] }, Vector { data: [0, 2, 6, 0, 0] }, Vector { data: [0, 1, 3, 0, 2] }, Vector { data: [0, 6, 0, 0, 1] }, Vector { data: [0, 0, 8, 0, 0] }, Vector { data: [0, 1, 2, 1, 0] }, Vector { data: [0, 3, 3, 0, 1] }, Vector { data: [0, 2, 1, 1, 0] }, Vector { data: [0, 4, 2, 0, 1] }, Vector { data: [0, 0, 6, 0, 1] }, Vector { data: [0, 0, 2, 0, 3] }, Vector { data: [0, 7, 1, 0, 0] }, Vector { data: [0, 2, 2, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 1 } sols:{Vector { data: [0, 0, 1, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 2, 0, 0] }, Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 3 } sols:{Vector { data: [0, 0, 1, 0, 1] }, Vector { data: [0, 0, 3, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 4, 0, 0] }, Vector { data: [0, 0, 2, 0, 1] }, Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 3, 0, 1] }, Vector { data: [0, 0, 5, 0, 0] }, Vector { data: [0, 0, 0, 1, 0] }, Vector { data: [0, 0, 1, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 4, 0, 1] }, Vector { data: [0, 0, 2, 0, 2] }, Vector { data: [0, 0, 0, 0, 3] }, Vector { data: [0, 0, 6, 0, 0] }, Vector { data: [0, 0, 1, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 3, 0, 2] }, Vector { data: [0, 0, 1, 0, 3] }, Vector { data: [0, 0, 2, 1, 0] }, Vector { data: [0, 0, 5, 0, 1] }, Vector { data: [0, 0, 0, 1, 1] }, Vector { data: [0, 0, 7, 0, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 4 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 3, 1, 0] }, Vector { data: [0, 0, 8, 0, 0] }, Vector { data: [0, 0, 2, 0, 3] }, Vector { data: [0, 0, 4, 0, 2] }, Vector { data: [0, 0, 6, 0, 1] }, Vector { data: [0, 0, 1, 1, 1] }, Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 5 } sols:{Vector { data: [0, 0, 0, 1, 0] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 6 } sols:{Vector { data: [0, 0, 0, 0, 3] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 2 } sols:{Vector { data: [0, 0, 0, 0, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 7 } sols:{Vector { data: [0, 0, 0, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 4 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 8 } sols:{Vector { data: [0, 0, 0, 0, 4] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 2 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 4 } sols:{Vector { data: [0, 0, 0, 0, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 1 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 3 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 5 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 7 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 0] }, result: 9 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 0, 2] }, result: 9 } sols:{}
self:PartialEquation { weights: Vector { data: [0, 0, 0, 5, 2] }, result: 9 } sols:{Vector { data: [0, 0, 0, 1, 2] }}
self:PartialEquation { weights: Vector { data: [0, 0, 1, 5, 2] }, result: 9 } sols:{Vector { data: [0, 0, 9, 0, 0] }, Vector { data: [0, 0, 4, 1, 0] }, Vector { data: [0, 0, 1, 0, 4] }, Vector { data: [0, 0, 7, 0, 1] }, Vector { data: [0, 0, 3, 0, 3] }, Vector { data: [0, 0, 5, 0, 2] }, Vector { data: [0, 0, 0, 1, 2] }, Vector { data: [0, 0, 2, 1, 1] }}
self:PartialEquation { weights: Vector { data: [0, 1, 1, 5, 2] }, result: 9 } sols:{Vector { data: [0, 1, 6, 0, 1] }, Vector { data: [0, 5, 2, 0, 1] }, Vector { data: [0, 6, 1, 0, 1] }, Vector { data: [0, 7, 0, 0, 1] }, Vector { data: [0, 4, 1, 0, 2] }, Vector { data: [0, 2, 7, 0, 0] }, Vector { data: [0, 1, 3, 1, 0] }, Vector { data: [0, 1, 8, 0, 0] }, Vector { data: [0, 1, 2, 0, 3] }, Vector { data: [0, 0, 1, 0, 4] }, Vector { data: [0, 3, 4, 0, 1] }, Vector { data: [0, 2, 1, 0, 3] }, Vector { data: [0, 8, 1, 0, 0] }, Vector { data: [0, 5, 0, 0, 2] }, Vector { data: [0, 4, 3, 0, 1] }, Vector { data: [0, 2, 2, 1, 0] }, Vector { data: [0, 4, 0, 1, 0] }, Vector { data: [0, 3, 6, 0, 0] }, Vector { data: [0, 0, 5, 0, 2] }, Vector { data: [0, 0, 0, 1, 2] }, Vector { data: [0, 0, 9, 0, 0] }, Vector { data: [0, 1, 1, 1, 1] }, Vector { data: [0, 6, 3, 0, 0] }, Vector { data: [0, 9, 0, 0, 0] }, Vector { data: [0, 7, 2, 0, 0] }, Vector { data: [0, 3, 1, 1, 0] }, Vector { data: [0, 2, 5, 0, 1] }, Vector { data: [0, 1, 0, 0, 4] }, Vector { data: [0, 0, 4, 1, 0] }, Vector { data: [0, 0, 2, 1, 1] }, Vector { data: [0, 2, 3, 0, 2] }, Vector { data: [0, 4, 5, 0, 0] }, Vector { data: [0, 3, 0, 0, 3] }, Vector { data: [0, 2, 0, 1, 1] }, Vector { data: [0, 3, 2, 0, 2] }, Vector { data: [0, 0, 7, 0, 1] }, Vector { data: [0, 5, 4, 0, 0] }, Vector { data: [0, 0, 3, 0, 3] }, Vector { data: [0, 1, 4, 0, 2] }}
self:InstanciedInvariant { equation: Invariant { places: [Place { name: "P0", comment: "" }, Place { name: "P1", comment: "" }, Place { name: "P2", comment: "" }, Place { name: "P3", comment: "" }, Place { name: "P4", comment: "" }], weights: Vector { data: [1, 1, 1, 5, 2] } }, result: 9 } sols:{Vector { data: [5, 4, 0, 0, 0] }, Vector { data: [2, 0, 0, 1, 1] }, Vector { data: [2, 2, 0, 1, 0] }, Vector { data: [3, 4, 0, 0, 1] }, Vector { data: [1, 4, 4, 0, 0] }, Vector { data: [0, 5, 2, 0, 1] }, Vector { data: [4, 1, 2, 0, 1] }, Vector { data: [2, 1, 2, 0, 2] }, Vector { data: [4, 3, 0, 0, 1] }, Vector { data: [3, 0, 6, 0, 0] }, Vector { data: [7, 0, 0, 0, 1] }, Vector { data: [0, 0, 5, 0, 2] }, Vector { data: [1, 0, 8, 0, 0] }, Vector { data: [1, 3, 3, 0, 1] }, Vector { data: [6, 2, 1, 0, 0] }, Vector { data: [3, 1, 0, 1, 0] }, Vector { data: [0, 6, 1, 0, 1] }, Vector { data: [1, 0, 2, 0, 3] }, Vector { data: [3, 1, 5, 0, 0] }, Vector { data: [2, 4, 3, 0, 0] }, Vector { data: [1, 2, 0, 0, 3] }, Vector { data: [5, 2, 2, 0, 0] }, Vector { data: [6, 0, 3, 0, 0] }, Vector { data: [0, 0, 9, 0, 0] }, Vector { data: [2, 3, 4, 0, 0] }, Vector { data: [0, 2, 1, 0, 3] }, Vector { data: [4, 3, 2, 0, 0] }, Vector { data: [7, 1, 1, 0, 0] }, Vector { data: [2, 1, 1, 1, 0] }, Vector { data: [2, 1, 0, 0, 3] }, Vector { data: [0, 2, 5, 0, 1] }, Vector { data: [3, 2, 0, 0, 2] }, Vector { data: [4, 1, 0, 0, 2] }, Vector { data: [0, 1, 1, 1, 1] }, Vector { data: [9, 0, 0, 0, 0] }, Vector { data: [0, 1, 3, 1, 0] }, Vector { data: [2, 2, 3, 0, 1] }, Vector { data: [0, 0, 4, 1, 0] }, Vector { data: [0, 2, 2, 1, 0] }, Vector { data: [5, 0, 0, 0, 2] }, Vector { data: [0, 7, 0, 0, 1] }, Vector { data: [1, 3, 5, 0, 0] }, Vector { data: [1, 0, 1, 1, 1] }, Vector { data: [1, 0, 6, 0, 1] }, Vector { data: [3, 1, 3, 0, 1] }, Vector { data: [2, 2, 1, 0, 2] }, Vector { data: [3, 3, 1, 0, 1] }, Vector { data: [1, 0, 3, 1, 0] }, Vector { data: [1, 2, 6, 0, 0] }, Vector { data: [6, 1, 0, 0, 1] }, Vector { data: [1, 4, 2, 0, 1] }, Vector { data: [8, 1, 0, 0, 0] }, Vector { data: [1, 4, 0, 0, 2] }, Vector { data: [1, 1, 0, 1, 1] }, Vector { data: [5, 1, 1, 0, 1] }, Vector { data: [3, 4, 2, 0, 0] }, Vector { data: [1, 2, 2, 0, 2] }, Vector { data: [4, 0, 3, 0, 1] }, Vector { data: [0, 3, 2, 0, 2] }, Vector { data: [0, 4, 3, 0, 1] }, Vector { data: [0, 4, 0, 1, 0] }, Vector { data: [0, 0, 0, 1, 2] }, Vector { data: [3, 2, 4, 0, 0] }, Vector { data: [1, 0, 4, 0, 2] }, Vector { data: [1, 1, 5, 0, 1] }, Vector { data: [1, 1, 1, 0, 3] }, Vector { data: [4, 4, 1, 0, 0] }, Vector { data: [0, 0, 2, 1, 1] }, Vector { data: [3, 6, 0, 0, 0] }, Vector { data: [3, 2, 2, 0, 1] }, Vector { data: [0, 1, 4, 0, 2] }, Vector { data: [1, 2, 1, 1, 0] }, Vector { data: [3, 0, 1, 1, 0] }, Vector { data: [6, 1, 2, 0, 0] }, Vector { data: [1, 6, 0, 0, 1] }, Vector { data: [0, 4, 1, 0, 2] }, Vector { data: [3, 0, 2, 0, 2] }, Vector { data: [0, 3, 0, 0, 3] }, Vector { data: [0, 3, 6, 0, 0] }, Vector { data: [4, 5, 0, 0, 0] }, Vector { data: [0, 2, 3, 0, 2] }, Vector { data: [3, 0, 0, 0, 3] }, Vector { data: [3, 0, 4, 0, 1] }, Vector { data: [0, 2, 7, 0, 0] }, Vector { data: [3, 5, 1, 0, 0] }, Vector { data: [1, 1, 3, 0, 2] }, Vector { data: [2, 0, 5, 0, 1] }, Vector { data: [0, 9, 0, 0, 0] }, Vector { data: [1, 6, 2, 0, 0] }, Vector { data: [0, 0, 3, 0, 3] }, Vector { data: [1, 1, 7, 0, 0] }, Vector { data: [2, 5, 0, 0, 1] }, Vector { data: [7, 2, 0, 0, 0] }, Vector { data: [4, 2, 3, 0, 0] }, Vector { data: [8, 0, 1, 0, 0] }, Vector { data: [3, 1, 1, 0, 2] }, Vector { data: [2, 1, 6, 0, 0] }, Vector { data: [1, 2, 4, 0, 1] }, Vector { data: [0, 1, 2, 0, 3] }, Vector { data: [1, 1, 2, 1, 0] }, Vector { data: [2, 2, 5, 0, 0] }, Vector { data: [0, 1, 8, 0, 0] }, Vector { data: [2, 0, 7, 0, 0] }, Vector { data: [6, 0, 1, 0, 1] }, Vector { data: [4, 0, 0, 1, 0] }, Vector { data: [2, 0, 1, 0, 3] }, Vector { data: [1, 5, 1, 0, 1] }, Vector { data: [1, 7, 1, 0, 0] }, Vector { data: [1, 3, 0, 1, 0] }, Vector { data: [0, 0, 1, 0, 4] }, Vector { data: [6, 3, 0, 0, 0] }, Vector { data: [4, 1, 4, 0, 0] }, Vector { data: [2, 6, 1, 0, 0] }, Vector { data: [2, 1, 4, 0, 1] }, Vector { data: [1, 3, 1, 0, 2] }, Vector { data: [0, 5, 4, 0, 0] }, Vector { data: [5, 0, 4, 0, 0] }, Vector { data: [2, 7, 0, 0, 0] }, Vector { data: [2, 3, 2, 0, 1] }, Vector { data: [0, 0, 7, 0, 1] }, Vector { data: [5, 1, 3, 0, 0] }, Vector { data: [4, 0, 1, 0, 2] }, Vector { data: [2, 3, 0, 0, 2] }, Vector { data: [1, 8, 0, 0, 0] }, Vector { data: [2, 0, 3, 0, 2] }, Vector { data: [7, 0, 2, 0, 0] }, Vector { data: [0, 8, 1, 0, 0] }, Vector { data: [1, 0, 0, 0, 4] }, Vector { data: [5, 3, 1, 0, 0] }, Vector { data: [3, 3, 3, 0, 0] }, Vector { data: [0, 5, 0, 0, 2] }, Vector { data: [0, 2, 0, 1, 1] }, Vector { data: [5, 2, 0, 0, 1] }, Vector { data: [0, 1, 6, 0, 1] }, Vector { data: [5, 0, 2, 0, 1] }, Vector { data: [2, 4, 1, 0, 1] }, Vector { data: [1, 5, 3, 0, 0] }, Vector { data: [0, 3, 1, 1, 0] }, Vector { data: [0, 4, 5, 0, 0] }, Vector { data: [0, 1, 0, 0, 4] }, Vector { data: [0, 7, 2, 0, 0] }, Vector { data: [2, 0, 2, 1, 0] }, Vector { data: [0, 3, 4, 0, 1] }, Vector { data: [4, 0, 5, 0, 0] }, Vector { data: [0, 6, 3, 0, 0] }, Vector { data: [4, 2, 1, 0, 1] }, Vector { data: [2, 5, 2, 0, 0] }}
{}
{}
thread 'petrinet::theorem::test::test_equation' panicked at 'assertion failed: false', src/petrinet/theorem.rs:225:9
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace


failures:
    petrinet::theorem::test::test_equation

test result: FAILED. 16 passed; 1 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s
