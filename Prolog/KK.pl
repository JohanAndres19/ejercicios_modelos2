% Julian Andres Garcia Guerrero 20171020011
% Modificado de https://github.com/triska/clpb/blob/master/knights_and_knaves.pl
% Los rompecabezas est�n ambientados en una isla ficticia donde todos
% los habitantes son o caballeros, que siempre dicen la verdad, o
% escuderos, que siempre mienten. Los puzzles involucran a un visitante
% de la isla que se encuentra con peque�os grupos de habitantes. Por
% lo general, el objetivo es que el visitante deduzca el tipo de
% habitantes de sus declaraciones, pero algunos rompecabezas de este
% tipo piden que se deduzcan otros hechos.

% Importaci�n de la librer�a de restricciones booleanas:
:- use_module(library(clpb)).

% Se usar�
% + 1 (verdadero) para representar a los caballeros y
% + 0 (falso)     para representar a los escuderos

% Problema 1: Te encuentras con dos habitantes, A y B. A dice: "O soy
% un escudero o B es un caballero."
%
expresion(1, [A,B]) :- sat(A=:=(~A + B)).
% Soluci�n:
%    ?- sat(A =:= (~A + B)).
%    A = B, B = 1.
%
% Por tanto, ambos son caballeros.

% Problema 2: A dice: "Yo soy un escudero, pero B no lo es".
expresion(2,[A,B]) :- sat(A=:=(~A * B)).
% Soluci�n:
%    ?- sat(A =:= (~A * B)).
%    A = B, B = 0.
%
% Por tanto, ambos son escuderos.

% Problema 3: A dice: "Al menos uno de nosotros es un escudero."
expresion(3, [A,B]) :- sat(A=:=card([1,2],[~A,~B])).
% Soluci�n:
%    ?- sat(A =:= card([1,2],[~A,~B])).
%    A = 1,
%    B = 0.
%
% Por tanto, A es un caballero y B es un escudero.
% Problema 4: Te encuentras con 3 habitantes. A dice: "Todos nosotros
% somos escuderos." B dice: "Exactamente uno de nosotros es un
% caballero."
expresion(4, Ks) :-
    Ks = [A,B,C],
    sat(A=:=(~A * ~B * ~C)),
    sat(B=:=card([1],Ks)).
% Soluci�n:
%    ?- sat(A =:= (~A * ~B * ~C)), sat(B =:= card([1],[A,B,C])).
%    A = C, C = 0,
%    B = 1.
%
% Por tanto, A y C son escuderos y B es un caballero.
%
%Ver Resultados
%expresion(1,[A,B]).
%expresion(2,[A,B]).
%expresion(3,[A,B]).
%expresion(4,[A,B,C]).
