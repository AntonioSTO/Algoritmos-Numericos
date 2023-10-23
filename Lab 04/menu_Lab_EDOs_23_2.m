clc
% Menu auxiliar para resolver os problemas propostos exercicios EDOs
printf ('Qual exercicio vai resolver?  \n')
printf ('1 - Resolver o problema  com f = -x/y (exemplo da aula/slides), via Euler  \n') 
printf ('2 - Resolver o problema  com f = -x/y  via Euler e Taylor de 2a ordem \n') 
printf ('3 - Resolver o problema  com f = -x*y  via Euler e Taylor de 2a ordem\n') 
printf ('4 - ......         \n')  
printf ('5 - Resolver o problema  do circuito RL \n')
printf ('0 - Sair.\n') 
op = input ('Agora digite sua opcao: ');

if (op==1)  
  % exemplo da aula 
  f = @(x,y) -x/y;
  % y''= f'
  df= @(x,y) -1.0*( x.^2 + y.^2)/(y.^3);
  % dominio 
  a=1.0;
  b=2.2;
  ya = input ('Digite o valor de y(a)  ');
  m = input ('qtos subintervalos (m)? ');
  h=(b-a)/m
  X = zeros(1,m+1);
  Y = zeros(1,m+1);
   %  Euler
    [X,YEuler]  = Euler ( a, b, ya, m ,f);
    X
    YEuler
    % Fazendo os grafico (versao bem simples)
    plot(X,YEuler,'g*');
endif %op 1

if (op==2)  
  % exemplo da aula 
  f = @(x,y) -x/y;
  % y''= f'
  df= @(x,y) -1.0*( x.^2 + y.^2)/(y.^3);
  % dominio
  a=1.0;
  b=2.2;
  ya = input ('Digite o valor de y(a)  ');
  m = input ('qtos subintervalos (m)? ');
  h=(b-a)/m
    % Taylor 2a
    [X,YTaylor] = Taylor( a, b, ya, m ,f, df);
    % Mostrando as solucoes numericas
    X
    YEuler
    YTaylor
    %Fazendo os gráficos
    titulo= 'Sols. via Euler (verde), Taylor (verm),  para  f(x,y) =-x/y com y(1)= 4 ';
    plot(X,YEuler,'g*', X,YTaylor,'ro');
    grid
    xlabel('x')
    ylabel('y = f(x)')
    title(titulo);
endif %op 2


if (op==3)  
  % y'= -x*y
   f = @(x,y) (-1)*x*y
   df = @(x,y) y*(x.^2 -1.0)
   % dominio
   a=0.0;
   b=1.0;
   disp('Fazer')
endif %op 3

if (op==5)  
  % i'= (V-R*i)/L 
   V = 12; R = 10;  L= 0.5 ;
   f = @(t,i) (V-R*i)/L 
   % dominio
   t0=0.0;
   tf=0.5;
   disp('Fazer')
 
endif %op 5





