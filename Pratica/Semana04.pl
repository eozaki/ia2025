% GRUPO A
soma([], 0).
soma([X | T], R):-
  soma(T, R2),
  R is X + R2.

pair(filipa, rita, ai_girls). 
pair(sancho, eugenio, ai_rules).

match(ai_girls, 1).
match(ai_girls, 1).
match(ai_rules, 1).
match(ai_rules, -1).

list_of_pairs(L):-
  findall((A, B), pair(A, B, _), L).

pair_total(N, T):-
  bagof(C, match(N, C), L),
  soma(L, T).

best_pair(A, B):-
  pair(A, B, N),
  pair_total(N, T),
  \+ (pair_total(_, T2), T2 > T).

imprime_par(N):-
  pair(A, B, N),
  pair_total(N, T),
  write("Nome: "), write(N), nl,
  write("Jogadores: "), write(A), write(", "), write(B), nl,
  write("Pontos: "), write(T), nl.

% GRUPO C
soma_linha([F | _], S, 1):- soma(F, S).
soma_linha([_ | T], S, N):-
  M is N - 1,
  soma_linha(T, S, M).

soma_coluna(M, S, N):-
  transposta(M, T),
  soma_linha(T, S, N).

transposta([[] | _], []).
transposta(M, [F | R]):- extrai_colunas(M, F, T), transposta(T, R).

extrai_colunas([], [], []).
extrai_colunas([[H | T] | R], [H | C], [T | RC]):-
  extrai_colunas(R, C, RC).
