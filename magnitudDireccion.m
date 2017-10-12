function [ m, d ] = magnitudDireccion( v )
%Regresa la magnitud y dirección de un vector
%   Entrada: Un vector
%   Salida: Magnitud y Dirección
    m = magnitud(v);
    d = direccion(v);
end

