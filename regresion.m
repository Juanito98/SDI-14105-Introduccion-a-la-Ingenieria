% Regresión Lineal
x = 10 : 10 : 80
y = [25,70,380,550,610,1120,830,1450]
scatter(x, y);

m = 19;
b = -200;
yEstimada = m * x + b

hold on;
plot(x, yEstimada);

%c = corrcoef(y, yEstimada)
%R2 = c(1, 1)^2
R2 = rCuadrada(y, yEstimada)

p = polyfit(x, y, 1); % Encuentra el polinomio que se ajusta a la minima suma de los cuadrados de la diferencia
mOpt = p(1);
bOpt = p(2);
yOpt = mOpt * x + bOpt;

yOpt = polyval(p, x) % Lo mismo que arriba
plot(x, yOpt);
R2 = rCuadrada(y, yOpt)