% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Resolver uma EDO
%   de 1a ordem via Euler
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [X,Y] = Euler( a, b, ya, m ,f)
		h=(b-a)/m;
		X(1) = a; 
    Y(1) = ya;
    % obtendo a solucao
		for i=1:m
		  Y(i+1) = Y(i) + h*f( X(i),Y(i) );
		  X(i+1) = X(i) + h;
		end
end %fim funcao




