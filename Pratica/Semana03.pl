% GRUPO I
%
% significa que X é trabalhador
% trabalhador(X).
%
% significa que X trabalha no departamento D
% departamento(X, D).
%
% significa que X é o chefe do departamento D
% chefe(X, D).
%
% significa que X é o CEO da empresa
% ceo(X).
%
% significa que o depto D tem N funcionarios
% numeroFuncionariosDepartamento(D, N).

% Alínea A
trabalhador(maria).
trabalhador(rui).

departamento(maria, financeiro).
departamento(rui, comercial).

chefe(pedro, comercial).

ceo(filipa).

numeroFuncionariosDepartamento(comercial, 30).
numeroFuncionariosDepartamento(financeiro, 3).
numeroFuncionariosDepartamento(tecnologia, 30).

% Alinea B
% C é chefe de X, se C é chefe do departamento D onde X trabalha
chefeTrabalhador(C, X):-
  trabalhador(X),
  departamento(X, D),
  chefe(C, D).

chefia(X):-
  chefe(X, _).
chefia(X):-
  ceo(X).

maiorDepto(D):-
  numeroFuncionariosDepartamento(D, Xd),
  \+((numeroFuncionariosDepartamento(_C, Xc), Xc > Xd)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GRUPO II
% Alínea A
first([X | _], X).

% Alínea B
last([X], X).
last([_ | T], X):-
  last(T, X).

% Alínea C
append([], [], []).
append([], [H2 | T2], [H2 | T2]).
append([H1 | T1], [], [H1 | T1]).
append([H1 | T1], L, L2):-
  append(T1, L, L3),
  L2 is [H1 | L3].

% Alínea F
replace(_Old, _New, [], []).

replace(Old, New, [Old | T], [New | T2]):-
  replace(Old, New, T, T2).

replace(Old, New, [X | T], [X | T2]):-
  replace(Old, New, T, T2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GRUPO III
crime(c1,assassinio).
crime(c2,roubo).
suspeito(sara).
suspeito(ze).
motivo_possivel(assassinio, [dinheiro, vingança]).
motivo_possivel(roubo, [fome, pobreza]).
temMotivo(sara, dinheiro).
temMotivo(ze, dinheiro).
temMotivo(ze, vingança).

temTodosMotivos(X, C):-
  suspeito(X),
  crime(C, Tipo),
  motivo_possivel(Tipo, Motivos),
  \+ (member(Motivo, Motivos), \+ temMotivo(X, Motivo)).
