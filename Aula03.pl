% Exercicio 1
velocidade_carro(bugatti, 300).
velocidade_carro(qashqai, 140).
velocidade_carro(fiat500, 100).
velocidade_carro(honda, 10).

mais_rapido(X, Y):-
  velocidade_carro(X, Vx),
  velocidade_carro(Y, Vy),
  Vx > Vy.

carro_mais_rapido(X):-
  velocidade_carro(X, _),
  \+(mais_rapido(Y, X)).


% Exercicio 2
aluno(luis).
aluno(ruben).
inscrito_ano(ruben, 2).
inscrito_ano(luis, 2).
avaliacao(luis, 1, ip, 18).
avaliacao(ruben, 1, ip, 8).

aluno_sem_ucs_atrasadas(A):-
  aluno(A),
  inscrito_ano(A, AnoAluno),
  \+((avaliacao(A, AnoUC, UC, Nota), Nota < 10, AnoUC < AnoAluno)).
