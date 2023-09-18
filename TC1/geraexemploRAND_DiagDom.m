%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Gera um sistema linear  Ax=b de dimensao n
%   cujos elementos sao quaisquer, gerados  aleatoriamente  entre 0 e 1
%   Uma funcao pronta do octave (rand de randomica) eh usada
%
%   OS elementos da Diagonal Principal  sao tais que a matriz gerada
%   eh diagonalemnte DOMINANTE
%
%   O sistema gerando eh tal que a soluccao eh x=[1.0,1.0,...,1.0,1.0]
%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Input:   dimensao do sistema
%% Output:  matriz A e vetor b
%
%%   usage
%   >> [A,b]= geraexemploRAND( );
%
function [A,b] = geraexemploRAND_DiagDom(n);

   A= zeros(n,n); %coloca zeros em todas as posiccoes

    for i=1:n
      s=0;
       for j=1:n
         A(i,j)=rand;
         s = s + abs( A(i,j));
       endfor
       A(i,i)= s;
    endfor
    % Gerando um vetor b tal que a soluccao seja x=[1.0,1.0,...,1.0,1.0]
    % isto eh calculando  b=A*[1.0,1.0,...,1.0,1.0]
    b = A*ones(n,1);

endfunction %fim funcao





