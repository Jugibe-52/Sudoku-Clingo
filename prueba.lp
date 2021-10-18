x(1..4).
y(1..4).

{sudoku(X,Y)}=1 :- x(X) ,y(Y).

subgrid(X,Y,A,B) :- x(X), x(A), y(Y), y(B),(X-1)/2 == (A-1)/2, (Y-1)/2 == (B-1)/2.