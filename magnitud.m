function [ res ] = magnitud( vector1 )
%Calcula la magnitud de un vector 
%   Entrada: un vector
%   Salida: la magnitud del vector   
    cuadrados = vector1.^2;
    suma = sum(cuadrados);
    res = sqrt(suma);
end

