A = double(input('Inserte el valor de A: '));
B = double(input('Inserte el valor de B: '));
C = double(input('Inserte el valor de C: '));
syms x;
f = A*x^2 + B*x + C

%Gráfica
fplot(f)
xlabel('x')
ylabel(char(f))
title('f')

res = double(solve(f));
fprintf('X = %f\n', res);