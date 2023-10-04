%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Metodo  da biseccao 
%   Dados de Entrada:  
%     os limites a e b do intervalo  (I=[a,b])
%     a precisao tol
%     a funcao f(x) 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
function [r] = bissecao(a, b, tol, f );
  dist= (b-a); 
  iter=1;
  printf('\n --- Metodo da bissecao ---  \n',  a,b );  
  
  while (dist > tol)
    printf('\n-- Iteracao %d --  ' ,iter);
    printf('I de partida  I = [%f, %f] \n',  a,b );
    xr =(a+b)/2;    % ponto medio
    fr = f(xr);     % valor da funcao neste ponto
    %printf('valores da funcao nos pontos f(a)=%f,  f(xr)=%f,   f(b)= %f \n',  f(a), f(xr), f(b) );
    if (fr == 0)  
       dist=0;  
    else 
       if (f(a) * fr < 0)  
           b = xr;    
       else  
           a = xr;  
       endif  
       dist = dist/2;
    endif % fim do if  fr==0 
    printf('I gerado -->  I=[%f, %f] ;  (tamanho do inter: %f )\n',  a, b , dist);
    iter=iter+1;
  endwhile  
  r=(a+b)/2;
endfunction
