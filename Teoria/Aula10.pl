% Exercicio 1
max(X, Y, X):- X > Y.
max(X, Y, Y):- Y >= X.

% Exercicio 2
max_list([X], X).
max_list([Head | T], X):-
  max_list(T, Y),
  max(Head, Y, X).

% Exercicio 3
count_positive_numbers([], 0).
% A solução abaixo vai além da pauta desta cadeira,
% pois faz uso de ";" (OU).
% count_positive_numbers([X | T], Y):-
%   count_positive_numbers(T, Z),
%   (X > 0 -> Y is Z + 1; Y is Z).
%
% A solução abaixo é válida no escopo desta cadeira.
count_positive_numbers([Head | T], N):-
  Head > 0,
  count_positive_numbers(T, N1),
  N is N1 + 1.
count_positive_numbers([Head | T], N):-
  Head =< 0,
  count_positive_numbers(T, N1),
  N is N1.

% Exercicio 4
remove_negative_numbers([], []).
remove_negative_numbers([X | T], L):-
  X < 0,
  remove_negative_numbers(T, L).
remove_negative_numbers([X | T], [X | L]):-
  X >= 0,
  remove_negative_numbers(T, L).

% Exercicio 5
is_sorted1([_]):-
  true.
is_sorted1([X1, X2 | T]):-
  X1 =< X2,
  is_sorted1([X2 | T]).

% Exercicio 6
insert_in_sorted_list(X, [], [X]).
insert_in_sorted_list(X, [H | T], [X, H | T]):-
  X < H.
insert_in_sorted_list(X, [H | T], [H | L]):-
  X >= H,
  insert_in_sorted_list(X, T, L).

% Exercicio 7
sorti([], []).
sorti([X], [X]).
% sorti([X, H | L], [H | L2]):-
%   X > H,
%   sorti([X | L], L2).
% sorti([X, H | L], [X | L2]):-
%   X =< H,
%   sorti([H | L], L2).
sorti([X | T], L):-
  sorti(T, L2),
  insert_in_sorted_list(X, L2, L).
