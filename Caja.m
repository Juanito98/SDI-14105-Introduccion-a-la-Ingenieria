L = 40
W = 22
syms x;
V = simplify((L - 2 * x) * (W - 2 * x) *  x)
VN = matlabFunction(V);

%Gráfica
fplot(V, [0, W / 2])
xlabel('x')
ylabel(char(V))
title('Volúmen')
grid on;
grid minor;

%Determina valor de x que corresponde volumen de 1000 in
soluciones = double(solve(V - 1000));
soluciones = soluciones(find(soluciones >= 0));
soluciones = soluciones(find(soluciones <= W / 2));
fprintf('El valor de x que da 1000in^3 es: %f\n', soluciones);

%Valor de x que maximiza el Volúmen
derivada1 = diff(V, 1);
derivada1N = matlabFunction(derivada1);
pc = double(solve(derivada1));
derivada2 = diff(V, 2);
derivada2N = matlabFunction(derivada2);
i = find(derivada2N(pc) < 0);
xOptima = pc(i);
fprintf('X: %f in\n', xOptima);
fprintf('Volúmen: %f in^3\n', VN(xOptima));