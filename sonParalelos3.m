function [ x ] = sonParalelos3( u, v )
%Checa si dos vectores son paralelos 
%   Entrada: Dos vectores
%   Salida: 1 si los vectores son paralelos, 0 en caso contrario
    vp = [v(2), -v(1)];
    if esPerpendicular(u, vp) == 1
        x = 1;
    else 
        x = 0;
    end
end

