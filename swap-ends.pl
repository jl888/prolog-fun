naive_reverse([],[]).
naive_reverse([H|T],R):-
    naive_reverse(T,RT),
    append(RT,[H],R).

swap_ends([Head1|Tail1], [Head2|Tail2]) :-
    naive_reverse(Tail1, [Head2|Body]),
    naive_reverse([Head1|Body], Tail2).			      


test_answer :-
    swap_ends([a, b, c, d, e, f], A),
    writeln(A).

/*
test_answer :-
    swap_ends(L, [coke, pepsi, fanta, sprite]),
    writeln(L).
*/

/*
test_answer :-
    swap_ends([888], L),
    writeln('Wrong answer!').
    
test_answer :-
    writeln('OK').
*/
