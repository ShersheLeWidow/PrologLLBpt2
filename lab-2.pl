is_svekryha(Z,Y):-
    is_marriage(X,Y),
    is_mother(Z,X).


is_marriage(anton, ann).
is_marriage(igor, lena).

is_mother(maria, anton).
is_mother(katia, ann).
is_mother(maria, igor).
is_mother(oksana,lena).
