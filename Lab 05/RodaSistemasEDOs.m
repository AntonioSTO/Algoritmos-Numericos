clc

printf ('Digite uma opção:  \n')
printf ('1 - Resolver o problema 1 \n') 
printf ('2 - Resolver o problema 2 (circuito) \n') 
printf ('0 - Sair.\n') 
op = input ('Escolha: ');

if (op == 1) 
  f1 = @(x, y1, y2) y1 + y2 + 3 * x;
  f2 = @(x, y1, y2) 2 * y1 + y2 - x^2;
  
  a = 0;  % Limite inferior do intervalo
  b = 1;  % Limite superior do intervalo
  y1a = 1; % Condição inicial para y1
  y2a = 0; % Condição inicial para y2

  disp('Resolvendo o problema 1')
  m = input('Quantos subintervalos (m)? ');

  % A chamada do método de Euler para resolver o sistema será feita aqui
  [X, Y1Euler, Y2Euler] = EulerSistemas2Eq(a, b, y1a, y2a, m, f1, f2);
  
  % Agora você pode fazer o que deseja com os resultados X, Y1Euler e Y2Euler
  % Por exemplo, você pode plotar os resultados:
  plot(X, Y1Euler, 'r', X, Y2Euler, 'b');
  legend('Y1Euler', 'Y2Euler');
  xlabel('X');
  ylabel('Y');
  title('Solução do Problema 1 usando o Método de Euler');
  
endif

if (op == 2) %circuito RLC
  % Definir as funções para o Problema 2 (circuito RLC)
  % f1 = @ (   )  ...   
  % f2 = @ (   )  ...   
  disp('Fazer...')
endif





