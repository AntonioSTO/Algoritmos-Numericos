%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Menu 
%    Resolvendo sistemas lineares por 
%%   Eliminacao de Gauss SEM e COM Pivoteamento
%   
clc
% menu
printf ('Resolvendo Sistemas Lineares por Eliminacao de Gauss\n  SEM e COM Pivoteamento \n') 
printf ('Qual item  vai resolver?  \n')
printf ('1 - Obter a solucao do sistema A1 x = b1, via Elim. de Gauss sem Pivoteamento. \n') 
printf ('2 - Obter a solucao do sistema A2 x = b2, via Elim. de Gauss sem Pivoteamento.  \n') 
printf ('3 - Obter a solucao do sistema A x = b ,  via Elim. de Gauss sem Pivoteamento   \n')
printf ('4 - Obter a solucao do sistema A x = b e exibir o erro contido na solucao  obtida sem Pivoteamento  \n') 
printf ('5 - Obter a solucao do sistema ... e exibir o erro contido nas solucoes  obtidas sem e COM Pivoteamento  \n')
printf ('6 - ...  \n') 
printf ('0 - Sair \n') 
op = input ('Agora digite sua opcao: ');

if (op==1)  
  % exemplo (1) (exemplo dos slides, da aula sobre elim de Gauss ingenua)
   % este jah estah feito, basta anotar os resultados
   A1=[10  -2 1 ; 5 2 5 ; -1 -1 0];
   b1=[0; 4; 1 ];
   x_sem = elimGaussSemPivot( A1, b1 )
endif

if (op==2)  
 n=7
 A2=[ 1.8 10 0.3 4 1.0 1.0 3.4;
   1.0 0.3 0.5 2.0 4.0 11.0  2.5;
   5.5 1.1 5.0  0.0 4.7 1.0 -8.3;
   17.0 2.3 3.0 8.2 4.0 1.0 12.5;
   905.0 0.3 31.0 -6.2 7.0 1.0 7.8;
   7777 7.0 8.0 -2.2 0.0 3.0 4.0;
   47   7.0 8.0 -2.2 0.0 3.0 4.0]
% Gerando um vetor b tal que a solução seja x=[1,1,.1,..,,1] 
% isto eh,  gerando b via   A2*[1,1,.1,..,,1] 
  b2 = A2*ones(n,1)
  printf( 'FAZENDO o experimento  com um sistema de dimensao  %d   \n ', n);
endif 

if (op==3)  
  n=4;
  A=[ -3 8 -2 3; 0.47 -2 6 2; -2 3 1 6; 70 -1 2 3]
  b=[ 6; 6.47; 8; 74]
  printf(' *** Implementar o que foi pedido  **** \n ');
endif 

if (op==4)  
  printf(' *** Implementar o que foi pedido  **** \n ');
endif 

if (op==5)  
   n=5;
   [A,b] = geraexemploRAND(n)
    printf(' *** Implementar o que foi pedido  **** \n ');
endif 

if (op==6)  
  % Rodar para varias dimensoes
  n= 6
  printf( 'FAZENDO o experimento  com um sistema de dimensao  %d   \n ', n);
  [A,b] = geraexemploRAND(n)
   printf( 'FAZENDO o experimento  com um sistema de dimensao  %d   \n ', n);

endif 



