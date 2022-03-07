fibonachi(1,1).
fibonachi(2,1).
fibonachi(A,B):-
    A>0,
    F1 is A-1,
    F2 is A-2,
    fibonachi(F1,P1),
    fibonachi(F2,P2),
    B is P1+P2.

