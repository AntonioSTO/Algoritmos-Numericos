clc
% Roda os problemas solicitados
% 
printf ('Digite uma opçao:  \n')
printf ('1 - Resolver o  problema 1 \n') 
printf ('2 - Resolver o problema 2  (circuito) \n') 
printf ('0 - Sair.\n') 
op = input ('Escolha: ');

if (op==1) 
  f1 = @ (x,y1,y2)   y1 + y2 + 3x ;
  f2 = @ (x,y1,y2)  2*y1 + y2 - x^2 ;
   disp(' Resolvendo o problema 1')
   m = input ('qtos subintervalos (m)? ');
   disp(' Fazer !!')
% A chamada do metodo de Euler para resolver o sistema serah feita aqui
%  com o comando, abaixo, que estah inativo
%  [X,Y1Euler,Y2Euler] = EulerSistemas2Eq( a, b, y1a,y2a, m, f1,f2)
  
endif

if (op==2) %circuito RLC
  % Definir as funcoes
  %f1 = @ (   )  ...   
  %f2 = @ (   )  ...   
 disp(' Fazer...')
endif





