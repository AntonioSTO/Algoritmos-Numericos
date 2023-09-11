%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Resolve um  sistema linear  triangular  SUPERIOR
%      versao INCOMPLETA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%
[n,n]=size(A); %resgata a dimensão da matriz que jah deve estar na memoria
clear x
printf('\n Resolvendo o sistema linear TRIANG SUPERIOR  de dimensao %d \n', n );
disp(' ***ATENCAO***: a matriz de entrada deve ser uma matriz triang SUPERIOR');

% Resolvendo via substituiccoes regressivas 
x(n)= b(n)/ A(n,n);
for i = (n-1):(-1):1
    % COMPLETAR
    %....
    x(i)=( b(i) - s)/ A(i,i);
endfor
disp(' A solucao do  sistema linear  eh' );
x

