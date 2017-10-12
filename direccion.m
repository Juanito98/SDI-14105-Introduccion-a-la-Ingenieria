function [ a ] = direccion( v )
% Calcula la dirección
% Entrada : Vector
% Salida : Dirección del Vector en grados centígrados
    a = atan2d(v(2), v(1));
    if a < 0 
        a = a + 360;
    end
end

