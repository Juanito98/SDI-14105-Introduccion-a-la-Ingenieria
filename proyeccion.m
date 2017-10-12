function [ res ] = proyeccion( u, v )
%Regresa la proyección de u sobre v
%   Entrada: Dos vectores
%   Salida: Un vector. La proyección de u sobre v
    res = (dot(u, v) / dot(v, v)) * v;
end

