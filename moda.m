function [ maxi, c ] = moda( v )
%Regresa la mediana de un conjunto de datos
%   Un arreglo
%   La moda de los valores
arr = sort(v);
maxi = arr(1);
c = 1;
freqLast = 1;
for i = 2 : 1 : length(arr)
    if arr(i) == arr(i - 1)
        freqLast = freqLast + 1;
        if freqLast > c
            c = freqLast;
            maxi = arr(i);
        end
    else 
        freqLast = 1;
    end
end

end

