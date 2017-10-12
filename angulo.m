function [ a ] = angulo( v1, v2 )
%Regresa el �ngulo entre dos vectores
%   Entrada: Dos vectores.
%   Salida: El �ngulo entre los dos vectores
    a = acosd(dot(v1, v2) / (magnitud(v1) * magnitud(v2)));
end

