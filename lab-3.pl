func(0,1,1):-!.
func(X,K,F):-
    X > 1,
    X < K,
    F is K.

func(X,K,F):-
    X > K,
    right(X,1,F).

right(X,RES,F):-
    X > 1,
    X1 is X - 1,
    RESX is RES * X,
    right(X1,RESX,F).
