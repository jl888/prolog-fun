pythagorean-triple(A, B, C) :-
    (0 < A), (A =< B), (B =< C),
    AB is (A * A) + (B * B),
    Csquared is C * C,
    (AB = Csquared).


test_answer :-
    pythagorean-triple(3,4,5),
    write('OK').

/*
test_answer :-
    pythagorean-triple(5,12,13),
    write('OK').
*/
