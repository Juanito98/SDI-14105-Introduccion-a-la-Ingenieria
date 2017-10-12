function [ a ] = direccion( v )
% Calcula la direcci�n
% Entrada : Vector
% Salida : Direcci�n del Vector en grados cent�grados
    a = atan2d(v(2), v(1));
    if a < 0 
        a = a + 360;
    end
end

