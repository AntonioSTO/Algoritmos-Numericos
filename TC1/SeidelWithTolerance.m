function [x, k] = SeidelWithTolerance(A, b, tol)
    n = size(A, 1);
    x = zeros(n, 1); % Vetor de partida
    x_old = x; % Inicializar com o vetor de partida
    k = 1;

    while k<=100000
        x_old = x; % Salvar a iteração anterior
        for i = 1:n
            sum1 = A(i, 1:i-1) * x(1:i-1);
            sum2 = A(i, i+1:n) * x_old(i+1:n);
            x(i) = (b(i) - sum1 - sum2) / A(i, i);
        end
        k = k + 1;
        if norm(x - x_old) < tol
            break; % Convergência atingida
        end
    end
end

