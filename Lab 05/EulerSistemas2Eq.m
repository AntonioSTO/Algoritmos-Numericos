function [X, Y1Euler, Y2Euler] = EulerSistemas2Eq(a, b, y1a, y2a, m, f1, f2)
    % Parâmetros
    h = (b - a) / m;  % Tamanho do passo
    X = a:h:b;        % Vetor de valores de X
    Y1Euler = zeros(1, m+1);  % Vetor para armazenar os resultados de y1
    Y2Euler = zeros(1, m+1);  % Vetor para armazenar os resultados de y2
    Y1Euler(1) = y1a;  % Condição inicial para y1
    Y2Euler(1) = y2a;  % Condição inicial para y2

    % Método de Euler para resolver o sistema de EDOs
    for i = 1:m
        Y1Euler(i+1) = Y1Euler(i) + h * f1(X(i), Y1Euler(i), Y2Euler(i));
        Y2Euler(i+1) = Y2Euler(i) + h * f2(X(i), Y1Euler(i), Y2Euler(i));
    end
end
