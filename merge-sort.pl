% Split_odd_even function =======================
split_odd_even([], [], []).

split_odd_even([H|T1], [H|T2], ListB) :-
    split_odd_only(T1, T2, ListB).

split_odd_only([], [], []) :- split_odd_even([], [], []).

split_odd_only([H|T1], ListA, [H|T2]) :-
    split_odd_even(T1, ListA,  T2).


% Merge function ================================
merge([], [], []).

merge([H1|T1], [], [H1|List]) :-
    merge(T1, [], List).

merge([], [H2|T2], [H2|List]) :-
    merge([], T2, List).

merge([H1|T1], [H2|T2], [H1|List]) :-
    (H1 =< H2), merge(T1, [H2|T2], List).

merge([H1|T1], [H2|T2], [H2|List]) :-
    (H2 < H1), merge([H1|T1], T2, List).


% Merge_sort ====================================
merge_sort([], []).

merge_sort([H1], [H1|List]) :-
    merge_sort([], List).

merge_sort([H1, H2], [H1, H2|List]) :-
    (H1 =< H2), merge_sort([], List).

merge_sort([H1, H2], [H2, H1|List]) :-
    (H2 < H1), merge_sort([], List).

merge_sort(ListIn, List) :-
    split_odd_even(ListIn, A, B),
    merge_sort(A, List1), merge_sort(B, List2),
    merge(List1, List2, List).


test_answer :-
    merge_sort([6,2,1,8], K),
    writeln(K).

/*
test_answer :-
    merge_sort([8,9,6,18,1,100], A),
    writeln(A).
*/

/*
test_answer :-
    merge_sort([1,2], J),
    writeln(J).
*/
