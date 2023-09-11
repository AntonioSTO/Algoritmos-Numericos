%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Resolve um  sistema linear  triangular  SUPERIOR
%
%   versao funcao (function)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
function [x] = resolveTriangularSuperior(A, b);

[n,n]=size(A);
% Resolvendo via substituições regressivas (retrosubstituicao)
printf('\n Resolvendo o sistema linear TRIANG SUPERIOR  de dimensao %d \n', n );
disp('**ATENCAO**: a matriz de entrada deve ser uma matriz triang SUPERIOR');
disp('Exibindo os dados lidos (de entrada)')
A
b

x(n)= b(n)/ A(n,n);
for i = (n-1):-1:1
   s = 0;
   for j = (i+1):n
        s = s + A(i,j)*x(j);
   endfor %j
    x(i)=( b(i) - s)/ A(i,i);
endfor

endfunction %fim da funcao

