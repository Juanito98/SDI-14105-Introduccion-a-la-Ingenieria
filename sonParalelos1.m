function [ x ] = sonParalelos1( v1, v2 )
%Checa si dos vectores son paralelos 
%   Entrada: Dos vectores
%   Salida: 1 si los vectores son paralelos, 0 en caso contrario
    if direccion(v1) == direccion(v2)
        x = 1;
    else 
        x = 0;
    end
end

