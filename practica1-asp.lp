x(1..9).
y(1..9).
k(1..9).

{casilla(X,Y,N): k(N)}=1 :- x(X) ,y(Y).

cuadro3x3(X,Y,A,B) :- x(X), x(A), y(Y), y(B),(X-1)/3 == (A-1)/3, (Y-1)/3 == (B-1)/3.

:- casilla(X,Y,N), casilla(A,Y,N), X!=A.
:- casilla(X,Y,N), casilla(X,B,N), Y!=B.
:- casilla(X,Y,V), casilla(A,B,V), cuadro3x3(X,Y,A,B), X != A, Y != B.