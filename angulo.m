function [ a ] = angulo( v1, v2 )
%Regresa el ángulo entre dos vectores
%   Entrada: Dos vectores.
%   Salida: El ángulo entre los dos vectores
    a = acosd(dot(v1, v2) / (magnitud(v1) * magnitud(v2)));
end

