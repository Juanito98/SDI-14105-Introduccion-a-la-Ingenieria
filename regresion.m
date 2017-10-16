% Regresión Lineal
x = 10 : 10 : 80
y = [25,70,380,550,610,1120,830,1450]
scatter(x, y);
yPromedio = mean(y);

p = polyfit(x, y, 1); % Encuentra el polinomio que se ajusta a la minima suma de los cuadrados de la diferencia
mOpt = p(1);
bOpt = p(2);
yEstimada = mOpt * x + bOpt;

yEstimada = polyval(p, x) % Lo mismo que arriba
hold on;
plot(x, yEstimada);
c = corrcoef(y, yEstimada)
R2 = c(1, 2)^2

promedio = yPromedio + zeros(length(x));
plot(x, promedio);

R2 = rCuadrada(y, yEstimada)

c = edCorrcoef(y, yEstimada)
R2 = c(1, 2)^2
