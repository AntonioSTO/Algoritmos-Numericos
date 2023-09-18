%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Gera uma qte fixa (Numiter) de aproximacoes para a solucao
%%  de um sistema linear Ax=b
%%  usando metodo iterativo de Gauss JACOBI
%%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Input: Matriz A, vetor b e uma quantidade de iteracoes (Numiter) a ser realizada
%%
%% Output: sequencia de aproximaccoes (de vetores) partindo do vetor todo nulo
%%
function [x] = JacobiNumIter( A, b, Numiter );
  %clc;
	printf('\n \n Fazendo  %d iteracoes do metodo de Gauss JACOBI para obter a solucao de Ax=b \n', Numiter);
	row = size(A,1);
  n=row;
	% vetor chute inicial
  xold=zeros(n,1);

  for k = 1:Numiter
		for i = 1:n
			soma = 0;
			for j = 1:(i-1)
           soma = soma + A(i,j)*xold(j);
      endfor
      for j = (i+1):n
			    soma = soma + A(i,j)*xold(j);
			endfor
			x(i) = ( b(i) - soma) / A(i,i);
		end
    d = x - xold;
	  printf('O vetor na iteracao %d,   ', k);
    x
    % atualizando o vetor de partida
		xold = x;
	endfor % Numiter
end


