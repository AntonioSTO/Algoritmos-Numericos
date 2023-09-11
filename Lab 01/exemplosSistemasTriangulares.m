% Exemplos de Sistemas Triangulares'
% OBSERVE que 
% 1) o simbolo  "%" colocado no inicio de uma linha denota uma linha de comentario
% 2) os comandos "%{ " seguido de " %}" delimitam trechos nao ativos (bloco de comentarios)
clc;
disp('Alguns exemplos de Sistemas Triangulares')
% 
% Exemplos de Sistemas Triang Superior
%
%disp('Exemplo de um sistema Triang Superior (dim 3)')
%A = [3 12.5 -6.2; 0  20 -0.1 ; 0 0 5]
%b = [2.4; 0.0; 35]

disp('Exemplo de um sistema Triang Superior (dim 4)')
A=[1.5  1.9  0.3  4.0; 0.0  4.3  0.5  2.0; 0.0  0.0  5.0  1.2; 0.0  0.0  0.0  8.2]
b=[3.0 ; 16.1; 0.65; 8.18]

%{
A = [1.0 2.2 3; 0 2 3 ; 0 0 4]
b = [7.0; -4.0;  5.5]
%}
%----------------------------------------
% Exemplos de Sistemas Triang inferior 
%disp('Exemplo de  um sistema Triang inferior')
%A=[ 2.0 0.0 0.0 0.0; 3.4  5.0  0  0 ; -4.3  0.5  2.0 0.0; 1.0  1.9  0.3  4.0]
%b=[2.0; 10.5;  -1.8; 7.2]

