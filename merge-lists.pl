merge([], [], []).

merge([H1|T1], [], [H1|List]) :-
    merge(T1, [], List).

merge([], [H2|T2], [H2|List]) :-
    merge([], T2, List).

merge([H1|T1], [H2|T2], [H1|List]) :-
    (H1 =< H2), merge(T1, [H2|T2], List).

merge([H1|T1], [H2|T2], [H2|List]) :-
    (H2 < H1), merge([H1|T1], T2, List).


test_answer :-
    merge([1,2,6], [2,8], A),
    writeln(A).

/*
test_answer :-
    merge([2, 1, 9], [6, 8, 3, 6, 2], B),
    writeln(B).
*/
