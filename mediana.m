function [ m ] = mediana( v )
%Regresa la mediana de un conjunto de datos
%   Un arreglo
%   Un valor
arr = sort(v);
m = arr(ceil(length(arr) / 2));
end

