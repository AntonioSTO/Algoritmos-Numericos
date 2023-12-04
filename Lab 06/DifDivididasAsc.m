% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Calcula a tabela de  diferenças  divididas ascendentes 
%   para um  dado conjunto de N pontos (x_i,y_i) distintos no plano
%
%   Usa uma matriz para gerar e armazenar as diferenças  divididas    
%
%   As diferenças  divididas são fornecidas usando duas estruturas distintas (para efeito didatico).
%   Saida:
%      i)  A tabela completa contendo todas  as dif. divididas eh armazenada em  uma Matriz de dimensao (NxN)
%          denominadada de DD, onde N é o numero de pontos
%      ii) As dif. divididas em torno de y_0. 
%          As dif sao armazenadas em  um vetor, de dimensao de N, 
%          onde na posicao 1 do vetor estah dif. div de ordem 0 em torno de y_0
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function  [DD, vetB] = DifDivididasAsc(x,y);
% Atencao:
% N eh o numero de pontos
% O grau do polinomio interpolador eh n =(N-1)
N=length(x)

%
% Montando  a tabela de dif divididas
% dif divididas de ordem 0 (colocadas na coluna 1, da Matriz DD)
for i = 1:N;
      DD(i,1) = y(i);   
endfor;
 
% dif divididas de ordem 1 (colocada na coluna 2 da matriz DD) até ordem n (ultima coluna de DD)
for k = 2:(N);  
   ord=(k-1); 
   for i = 1:(N -k+1);
     DD(i,k) = ( DD((i+1),(k-1))- DD(i,(k-1)) )/( x(i+(ord))- x(i)) ;   
  end;
end;

% Armazendo apenas as dif. divididas em tormo de y_0. 
% Um vetor, chamado vetB armazena a 1a linha da matriz DD, isto eh, as DifDiv em torno de y_0
%
% vetB(N):   DifDiv de ordem  n =(N-1) em torno de y_0
% vetB(N-1): DifDiv de ordem  n-1      em torno de y_0
%..
% vetB(1): DifDiv de ordem    n=0 {(N-1)-N=0}  em torno de y_0
for k = 1:(N);
      vetB(k)= DD(1,k); 
endfor; 

endfunction
