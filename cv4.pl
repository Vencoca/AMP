pozitivni([], []).
pozitivni([Hlava|Ocas], [Hlava|PozOcas]) :- Hlava>0, pozitivni(Ocas, PozOcas).
pozitivni([Hlava|Ocas], PozOcas) :- Hlava=<0, pozitivni(Ocas, PozOcas).

soucet_plus([],0).
soucet_plus([Hlava|Ocas], N) :- Hlava > 0, soucet_plus(Ocas,N1), N is N1 + Hlava.
soucet_plus([Hlava|Ocas], N) :- Hlava =< 0, soucet_plus(Ocas,N).

odstran(_,[],[]).
odstran(Co,[Co|Ocas],Ocas) :- !.
odstran(Co,[Hlava|Ocas],[Hlava|Vysledek]) :- odstran(Co,Ocas,Vysledek).

odstranvse(_,[],[]).
odstranvse(Co,[Co|Ocas],Vysledek) :- odstranvse(Co,Ocas,Vysledek),!.
odstranvse(Co,[Hlava|Ocas],[Hlava|Vysledek]) :- odstranvse(Co,Ocas,Vysledek).

unikatni([]).
unikatni([Hlava|Ocas]) :- not(jevseznamu(Ocas,Hlava)), unikatni(Ocas).
jevseznamu([Hlava|_],Hlava).
jevseznamu([_|Ocas],Prvek) :- jevseznamu(Ocas,Prvek).