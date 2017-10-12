function [ x, i ] = newtonRaphsonFunction( n )
%Método de Newton-Raphson para encontrar la raíz de un número
%   El número al cual le debes sacar raíz
    i = 0;
    x = n;
    newX = (x + n / x) / 2;
    while x ~= newX
        i = i + 1;
        x = newX;
        newX = (x + n / x) / 2;
    end
end

