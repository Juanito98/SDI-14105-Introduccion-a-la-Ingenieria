function [ res ] = proyeccion( u, v )
%Regresa la proyecci�n de u sobre v
%   Entrada: Dos vectores
%   Salida: Un vector. La proyecci�n de u sobre v
    res = (dot(u, v) / dot(v, v)) * v;
end

