y = [6.495 6.595 6.615 6.635 6.485 6.555 6.665 6.505 6.435 6.625 ...
    6.715 6.655 6.755 6.625 6.715 6.575 6.655 6.605 6.565 6.515 ...
    6.395 6.775 6.685];
yPromedio = mean(y)

% Calcular el promedio a patita
n = length(y);
suma = 0;
for i = 1 : 1 : n
    suma = suma + y(i);
end
yPromedio = suma / n

% Otra forma del promedio
suma = sum(y);
yPromedio = suma / n

% Calculamos la desviación estandar
ySigma = std(y)
ySigma = sqrt(sum((y - yPromedio).^2) / (n - 1))

h = histogram(y, 10)
xH = [];
for i = 1 : 1 : h.NumBins
    xH(i) = (h.BinEdges(i) + h.BinEdges(i + 1)) / 2;
end
yH = h.Values;
display(xH);
display(yH);

hold on;
plot(xH, yH);
