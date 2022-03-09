rodic(alfons,vera).
rodic(alfons,emil).
rodic(ema,vera).
rodic(ema,emil).
rodic(jiri,ivana).
rodic(jitka,ivana).
rodic(emil, cyril).
rodic(ivana,cyril).
rodic(cyril,zuzana).
rodic(cyril,otakar).
rodic(bohumil,lenka).
rodic(lenka,zuzana).
rodic(lenka,otakar).
muz(alfons).
muz(emil).
muz(cyril).
muz(otakar).
muz(bohumil).
muz(jiri).
zena(vera).
zena(ema).
zena(ivana).
zena(zuzana).
zena(lenka).
zena(jitka).
prarodic(X,Y) :- rodic(X,Z), rodic(Z,Y).
vnouce(X,Y) :- rodic(Y,Z), rodic(Z,X).
pravnouce(X,Y) :- vnouce(X,Z), rodic(Y,Z).
sourozenec(X,Y) :- rodic(Z,X),rodic(Z,Y), X \= Y.
bratr(X,Y) :- sourozenec(X,Y),muz(X).
teta(X,Y) :- zena(X), sourozenec(X,Z),rodic(Z,Y).