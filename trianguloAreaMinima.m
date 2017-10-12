syms a;
b = 2 * a / (a - 1)
bN = matlabFunction(b)
area = a * b / 2
areaN = matlabFunction(area)

fplot(area, [0, 4])
xlabel('a')
ylabel(char(area))
title('Área')
grid on;
grid minor;

derivada1 = diff(area, a, 1)
derivada1N = matlabFunction(derivada1)
puntosCriticos = solve(derivada1)
derivada2 = diff(area, a, 2)
derivada2N = matlabFunction(derivada2)
res = double(subs(derivada2, puntosCriticos))
res = derivada2N(puntosCriticos)
i = find(res > 0)
aMin = res(i)
bMin = double(subs(b, aMin))
bMin = double(bN(aMin))
areaMinima = double(subs(area, aMin))
areaMinima = double(areaN(aMin))
fprintf('Área mínima: %fu^2 \n', areaMinima);
fprintf('La ecuación de la recta es: y = %fx + %f\n', -bMin / aMin, bMin);