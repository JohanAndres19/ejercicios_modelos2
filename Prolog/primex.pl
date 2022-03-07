padre(jaime,rosmery).
padre(jaime,jimy).
padre(jaime,javier).
padre(jaime,doris).
padre(jaime,rut).
padre(jaime,luz).
padre(jimy,samuel).
padre(jairo,constansa).
padre(jairo,nicole).
padre(jorge,jairo).
padre(jorge,sonia).
padre(hermogenes,eleucterio).
padre(hermogenes,leonidas).
padre(eleucterio,eva).
padre(eleucterio,dora).
madre(eva,rosmery).
madre(eva,jimy).
madre(eva,javier).
madre(eva,doris).
madre(eva,rut).
madre(eva,luz).
madre(doris,nicole).
madre(rosmery,yesenia).
madre(rosmery,johan).
madre(juana,jaime).
madre(juana,bertha).
madre(bertha,costansa).
madre(costansa,valeria).
madre(constansa,gabriela).
madre(constansa,felix).
madre(elena,eva).
madre(elena,dora).
madre(sonia,laura).
diferente(A,B):- A\==B.
esHijo(Hijo,A):- padre(A,Hijo); madre(A,Hijo).
esHermano(A,B):- ((padre(C,A),padre(C,B));(madre(C,A),madre(C,B))),diferente(A,B).
esAbuelo(A,B):- padre(A,C), esHijo(B,C).
esAbuelo(A,B):- padre(A,C), (esAbuelo(C,B); esAbuela(C,B)).
esAbuela(A,B):- madre(A,C), esHijo(B,C).
esAbuela(A,B):- madre(A,C), (esAbuelo(C,B); esAbuela(C,B)).
esTio(A,B):- (esHermano(C,A), (padre(C,B);madre(C,B)));((esAbuelo(D,B);esAbuela(D,B)),esHermano(D,A)).
esSobrino(A,B):- esTio(B,A).
esPrimo(A,B):- ((padre(C,A);madre(C,A);esAbuelo(C,A);esAbuela(C,A)),esTio(C,B)),((padre(D,B);madre(D,B);esAbuelo(D,B);esAbuela(D,B)),esTio(D,A)).
esFamilia(A,B):-madre(A,B);padre(A,B);esHijo(A,B);esHermano(A,B);esAbuelo(A,B);esAbuela(A,B);esTio(A,B);esSobrino(A,B);esPrimo(A,B).

