% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Resolver uma EDO
%   de 1a ordem via Taylor de 2a ordem
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [X,Y] = Taylor( a, b, ya, m ,f, df);
		h=(b-a)/m;
		X(1) = a; 
    Y(1) = ya;
     % obtendo a solucao
		for i=1:m
		  Y(i+1) = Y(i) + h*f( X(i),Y(i) )+ 0.5*h^2*df( X(i),Y(i) ) ;
		  X(i+1) = X(i) + h;
		endfor
end %fim funcao


