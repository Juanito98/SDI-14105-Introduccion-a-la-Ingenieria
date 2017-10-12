function [ x, i ] = newtonRaphsonFunction( n )
%M�todo de Newton-Raphson para encontrar la ra�z de un n�mero
%   El n�mero al cual le debes sacar ra�z
    i = 0;
    x = n;
    newX = (x + n / x) / 2;
    while x ~= newX
        i = i + 1;
        x = newX;
        newX = (x + n / x) / 2;
    end
end

