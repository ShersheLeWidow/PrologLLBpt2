func([H|T], List):-
    find_len([H|T], Len),
    find_elem([H|T], 2, Second),
    find_elem([H|T], 5, Fifth),
    del_elem([H|T], Len - 1, L1),
    insert_after(L1, Len - 1, Second, L2),
    insert_after(L2, Len, Fifth, List).

find_len([_|T],L):-
    find_len(T, L1),
    L is L1 + 1.
find_len([], 0).

find_elem([_|T],I,Nth):-
    I > 1,
    I1 is I - 1,
    find_elem(T, I1, Nth).
find_elem([Nth|_], 1, Nth).

del_elem([H|T1],I,[H|T2]):-
    I > 1,
    I1 is I-1,
    del_elem(T1, I1, T2).
del_elem([_|L], 1, L).


insert_after([H|T1], I, Term, [H|T2]):-
    I > 1,
    I1 is I - 1,
    insert_after(T1, I1, Term, T2).
insert_after([H|L], 1, Term, [H, Term|L]).
