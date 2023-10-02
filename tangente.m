%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Calcula novas aproximacoes para a raiz  de 
%    uma funcao f(x) pelo metodo da Tangente
%    fazendo uma quantidade fixa de iteracoes 
% 
%   Dados de Entrada:  chute inicial (xinicial) 
%		       a quantidade de iteracoes
%                      f(x) e f'(x)  (f e sua derivada)
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
function  [x] = tangente( xinicial,  Numiter, f, derf)
%
x(1)= xinicial;
disp("----- TANGENTE (qte fixa de Iteracoes) -----------"); 
% processo iterativo
for k = 1:(Numiter);
   % avaliando a funcao e a sua derivada  
    fk = f(x(k));
    derfk = derf(x(k)); 
    %  distancia entre os  pontos
    dist= (fk/derfk);
    %  gerando o novo ponto (obtendo a nova aproximacao)
    x(k+1)= x(k)- dist;
end

endfunction
