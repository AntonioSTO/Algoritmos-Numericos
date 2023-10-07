function [x] = GaussSeidelNumIter(A, b, Numiter)
  %clc;
  printf('\n \n Fazendo  %d iteracoes do metodo de Gauss SEIDEL para obter a solucao de Ax=b \n', Numiter);
  row = size(A, 1);
  n = row;
  % vetor chute inicial
  x = zeros(n, 1);

  for k = 1:Numiter
    for i = 1:n
      soma = 0;
      for j = 1:n
        if j ~= i
          soma = soma + A(i, j) * x(j);
        end
      end
      x(i) = (b(i) - soma) / A(i, i);
    end
    printf('O vetor na iteracao %d,   ', k);
    x
  end
end
