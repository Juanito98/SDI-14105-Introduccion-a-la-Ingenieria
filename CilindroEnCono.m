R = 10
H = 30
syms r;
h = simplify(H - H * r / R);
hN = matlabFunction(h);
V = pi * r^2 * h
VN = matlabFunction(V);

%Gráfica
fplot(V, [0, R])
xlabel('r')
ylabel(char(V))
title('Volúmen del Cilindro')
grid on;
grid minor;

%Determina valor de r que corresponde volumen de 800in
soluciones = double(solve(V - 800));
soluciones = soluciones(find(soluciones >= 0));
soluciones = soluciones(find(soluciones <= R));
fprintf('El valor de r que da 800in^3 es: %f\n', soluciones);

%Valor de r que maximiza el volimen del cilindro
derivada1 = diff(V, 1);
derivada1N = matlabFunction(derivada1);
pc = double(solve(derivada1));
derivada2 = diff(V, 2);
derivada2N = matlabFunction(derivada2);
i = find(derivada2N(pc) < 0);
rOptimo = pc(i);
fprintf('Radio óptimo: %f in\n', rOptimo);
fprintf('Volúmen: %f in^3\n', VN(rOptimo));