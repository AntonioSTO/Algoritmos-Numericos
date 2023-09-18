%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Gera um sistema linear  Ax=b de dimensao n
%   cujos elementos sao quaisquer, gerados  aleatoriamente  entre 0 e 1
%   Uma funcao pronta do octave (rand de randomica) eh usada
%   O sistema gerado eh tal que a solucao eh x=[1.0,1.0,...,1.0,1.0]
%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Input:   dimensao do sistema
%% Output:  matriz A e vetor b
%
%%   usage
%   >> [A,b]= geraexemploRAND( );
%
function [A,b] = geraexemploRAND(n);
   %printf('---Gerando exemplo de dimensao  %d  \n ',n)
   A= zeros(n,n); %coloca zeros em todas as posicoes

    for i=1:n
       for j=1:n
         A(i,j)=rand;
       endfor
    endfor
    % Gerando um vetor b tal que a soluccao seja x=[1.0,1.0,...,1.0,1.0]
    % isto é calculando  b=A*[1.0,1.0,...,1.0,1.0]
    b = A*ones(n,1);
    format short

endfunction %fim funcao





