obsah_kruhu(Polomer,Obsah) :- Obsah is 3.14 * Polomer * Polomer.
objem_kvadru(A,B,C,V) :- V is A * B * C.
povrch_kvadru(A,B,C,S) :- S is 2*(A*B+B*C+A*C). 
nsd(X,X,X).
nsd(X,Y,NSD) :- X > Y, X1 is X-Y,nsd(X1,Y,NSD).
nsd(X,Y,NSD) :- X < Y, Y1 is Y-X,nsd(X,Y1,NSD). 
odrizni(_,[],[]).
odrizni(0,L,L).
odrizni(N,[_|Ocas],L) :- N1 is N-1, odrizni(N1,Ocas,L).
delka([],0).
delka([_|Ocas],N) :-  delka(Ocas,N1),N is N1 + 1.