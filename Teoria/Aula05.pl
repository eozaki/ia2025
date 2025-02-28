soma(A, B, S):-
  S is A + B.

alunos([erick, luis, lais, ruben]). % cabeca = erick; cauda = [luis, lais, ruben]; => recursiva

alunos([_H | _T]). % H = erick, T = [luis, lais, ruben];

primeiro([X | _], X).

ultimo([X], X).
ultimo([_X | T], U):-
  ultimo(T, U).

membro([A | _T], A).
membro([_X | T], A):-
  membro(T, A).

element(1, [X | _T], X).
element(N, [_X | T], A):-
  M is N - 1,
  element(M, T, A).

size([], 0).
size([_X | T], N):-
  size(T, M),
  N is M + 1.

join([], B, B).
join([Xa | Ta], B, [Xa | T3]):-
  join(Ta, B, T3).
