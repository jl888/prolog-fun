naive-reverse([],[]).
naive-reverse([H|T],R):-
    naive-reverse(T,RT),
    append(RT,[H],R).

swap_ends([Head1|Tail1], [Head2|Tail2]) :-
    naive-reverse(Tail1, [Head2|Body]),
    naive-reverse([Head1|Body], Tail2).			      


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
