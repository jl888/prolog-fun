add_one([], []).
add_one([H|T1], [N|T2]) :-
    add_one(T1, T2), N is H + 1.


test_answer :-
    add_one([1, 2, 3], A),
    writeln(A).

/*
test_answer :-
    add_one([1, 2, 3, 4], [2, 3, 4, 6]),
    writeln('OK').
*/

/*
test_answer :-
    add_one([], []),
    writeln('OK').
*/
