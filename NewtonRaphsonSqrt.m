%M�todo de Newton-Raphson para encontrar la ra�z de un n�mero

n = input('Ingresa el n�mero del cual quieres encontrar su ra�z cuadrada: ');

%Gr�fica de la funci�n
x = linspace(0, n);
y = x.^2 - n;
plot(x, y);
grid on;
xlabel('x');
ylabel('y');
title('Ra�z cuadrada');


[x, iter] = newtonRaphsonFunction(n);

%Despliega resultados
display('Numbero de iteraciones: ');
display(iter);
display('x: ');
display(x);
display('f(x): ');
display(x^2 - n);