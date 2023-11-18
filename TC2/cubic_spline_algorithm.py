import numpy as np
import matplotlib.pyplot as plt

def cubic_spline_coefficients(x, y):
    n = len(x) - 1
    h = np.diff(x)

    alpha = np.zeros(n)
    for i in range(1, n):
        alpha[i] = 3/h[i] * (y[i+1] - y[i]) - 3/h[i-1] * (y[i] - y[i-1])

    l, mu, z = np.ones(n), np.zeros(n), np.zeros(n)
    for i in range(1, n):
        l[i] = 2*(x[i+1] - x[i-1]) - h[i-1]*mu[i-1]
        mu[i] = h[i]/l[i]
        z[i] = (alpha[i] - h[i-1]*z[i-1])/l[i]

    c = np.zeros(n+1)
    for j in range(n-1, -1, -1):
        c[j] = z[j] - mu[j]*c[j+1]
        b_j = (y[j+1] - y[j])/h[j] - h[j]*(c[j+1] + 2*c[j])/3
        d_j = (c[j+1] - c[j]) / (3 * h[j])

    coefficients = np.zeros((n, 4))
    for i in range(n):
        coefficients[i] = [y[i], b_j, c[i], d_j]

    return coefficients

def cubic_spline_eval(x, coefficients, xi):
    yi = np.zeros_like(xi)
    for i in range(len(x)-1):
        mask = (x[i] <= xi) & (xi <= x[i+1])
        dx = xi - x[i]  # Corrigindo esta linha
        a, b, c, d = coefficients[i]
        yi[mask] = a + b*dx[mask] + c*dx[mask]**2 + d*dx[mask]**3
    return yi

# Entrada de dados
n = int(input("Digite a quantidade de pontos de interpolação: "))
x = np.zeros(n+1)
y = np.zeros(n+1)

print("Digite os valores de x separados por espaço:")
x_values = np.array(list(map(float, input().split())))

print("Digite os valores de y separados por espaço:")
y_values = np.array(list(map(float, input().split())))

for i in range(n+1):
    x[i] = x_values[i-1]
    y[i] = y_values[i-1]

z = float(input("Digite o valor de z: "))
m = int(input("Digite a quantidade de pontos para cálculo das imagens (m): "))

# Calcula os coeficientes das splines cúbicas naturais
coefficients = cubic_spline_coefficients(x, y)

# Calcula si(z)
result_z = cubic_spline_eval(x, coefficients, z)
print(f"{z}\n{result_z}")

# Gera pontos igualmente espaçados para o gráfico
x_interp = np.linspace(min(x), max(x), m)
y_interp = cubic_spline_eval(x, coefficients, x_interp)

# Exibe os valores de xi e suas respectivas imagens si(xi)
print("Valores de xi e suas respectivas imagens si(xi):")
print(np.column_stack((x_interp, y_interp)))

# Grava os pontos em um arquivo chamado grafico.txt
np.savetxt('grafico.txt', np.column_stack((x_interp, y_interp)), delimiter='\t')

# Plota o gráfico
plt.plot(x, y, 'ro', label='Pontos de Interpolação')
plt.plot(x_interp, y_interp, label='Spline Cúbica')
plt.scatter([z], result_z, color='green', marker='o', label=f'si({z})')
plt.legend()
plt.xlabel('x')
plt.ylabel('y')
plt.title('Splines Cúbicas Naturais')
plt.grid(True)
plt.show()
