function [ u ] = unitario( v )
%Regresa el vector unitario de un vector
%   Entrada: Un vector
%   Salida: Un vector. El vector unitario
    u = v / magnitud(v);
end

