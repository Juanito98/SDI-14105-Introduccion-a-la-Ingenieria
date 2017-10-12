function [ x ] = esPerpendicular( v1, v2 )
%Permite saber si dos vectores son perpendiculares
%   Entrada: Dos vectores
%   Salida: 1 si son perpendiculares, 0 en caso contrario
    if dot(v1, v2) == 0
        x = 1;
    else 
        x = 0;
    end
end

