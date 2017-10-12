function [ x ] = sonParalelos2( v1, v2 )
%Checa si dos vectores son paralelos 
%   Entrada: Dos vectores
%   Salida: 1 si los vectores son paralelos, 0 en caso contrario
    if v1(2) * v2(1) == v2(2) * v1(1)
        x = 1;
    else 
        x = 0;
    end
end

