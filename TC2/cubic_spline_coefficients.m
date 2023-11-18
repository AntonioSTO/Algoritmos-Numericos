function coefficients = cubic_spline_coefficients(x, y)
    n = length(x) - 1;
    h = diff(x);

    alpha = zeros(n, 1);
    for i = 2:n
        alpha(i) = 3/h(i) * (y(i+1) - y(i)) - 3/h(i-1) * (y(i) - y(i-1));
    end

    l = ones(n, 1);
    mu = zeros(n, 1);
    z = zeros(n, 1);
    for i = 2:n
        l(i) = 2*(x(i+1) - x(i-1)) - h(i-1)*mu(i-1);
        mu(i) = h(i)/l(i);
        z(i) = (alpha(i) - h(i-1)*z(i-1))/l(i);
    end

    c = zeros(n+1, 1);
    l = [1; l];
    mu = [0; mu];
    z = [0; z];
    for j = n:-1:1
        c(j) = z(j) - mu(j)*c(j+1);
        b_j = (y(j+1) - y(j))/h(j) - h(j)*(c(j+1) + 2*c(j))/3;
        d_j = (c(j+1) - c(j)) / (3 * h(j));
    end

    coefficients = [y(1:end-1), b_j, c(1:end-1), d_j];
end

function yi = cubic_spline_eval(x, coefficients, xi)
    yi = zeros(size(xi));
    for i = 1:length(x)-1
        mask = (x(i) <= xi) & (xi <= x(i+1));
        dx = xi(mask) - x(i);
        a = coefficients(i, 1);
        b = coefficients(i, 2);
        c = coefficients(i, 3);
        d = coefficients(i, 4);
        yi(mask) = a + b*dx + c*dx.^2 + d*dx.^3;
    end
end

% Entrada de dados
n = input("Digite a quantidade de pontos de interpolação: ");
x = zeros(n+1, 1);
y = zeros(n+1, 1);

disp("Digite os valores de x separados por espaço:");
x_values = input("");
disp("Digite os valores de y separados por espaço:");
y_values = input("");

for i = 1:n+1
    x(i) = x_values(i);
    y(i) = y_values(i);
end

z = input("Digite o valor de z: ");
m = input("Digite a quantidade de pontos para cálculo das imagens (m): ");

% Calcula os coeficientes das splines cúbicas naturais
coefficients = cubic_spline_coefficients(x, y);

% Calcula si(z)
result_z = cubic_spline_eval(x, coefficients, z);
fprintf('%f\n%f\n', z, result_z);

% Gera pontos igualmente espaçados para o gráfico
x_interp = linspace(min(x), max(x), m)';
y_interp = cubic_spline_eval(x, coefficients, x_interp);

% Exibe os valores de xi e suas respectivas imagens si(x)
disp("Valores de xi e suas respectivas imagens si(xi):");
disp([x_interp, y_interp]);

% Grava os pontos em um arquivo chamado grafico.txt
dlmwrite('grafico.txt', [x_interp, y_interp], 'delimiter', '\t');

% Plota o gráfico
figure;
plot(x, y, 'ro', 'DisplayName', 'Pontos de Interpolação');
hold on;
plot(x_interp, y_interp, 'DisplayName', 'Spline Cúbica');
scatter(z, result_z, 50, 'g', 'filled', 'DisplayName', ['si(', num2str(z), ')']);
legend();
xlabel('x');
ylabel('y');
title('Splines Cúbicas Naturais');
grid on;
hold off;

