:- use_module(library(clpb)).

% -----------punto 1 A dice: "Yo soy un escudero, pero B no lo es".
diceVerdad(caballero).
diceMentira(escudero).
esCaballero(A):-diceVerdad(A).
esEscudero(B):-diceMentira(B).
esEscudero(A):- not(esCaballero(A)).
%evaluaExpresion(A,B):-(esCaballero(A),expresion(A,B));(esEscudero(A), not(expresion(A,B))).
expresion(A,B):-(esEscudero(A),esEscudero(B)).
evaluaExpresion(A,B):-((not(esEscudero(A));(expresion(A,B))),(not(expresion(A,B));esEscudero(A))), esEscudero(A).
%R=(A&¬B)
%(A->R) &(R->A)
%(¬A o R) & (¬R o A)
%(A & ¬R) o (R & ¬A)
% A<->(A & ¬B) o ((A & ¬R) o (R & ¬A))
% -----------punto 2  Te encuentras con 3 habitantes. A dice: "Todos nosotros
% somos escuderos." B dice: "Exactamente uno de nosotros es un
% caballero."
expresion1(Ks) :-
    Ks = [A,B,C],
    sat(A=:=(~A * ~B * ~C)),
    sat(B=:=card([1],Ks)).

