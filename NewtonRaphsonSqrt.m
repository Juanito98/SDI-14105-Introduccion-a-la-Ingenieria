%Método de Newton-Raphson para encontrar la raíz de un número

n = input('Ingresa el número del cual quieres encontrar su raíz cuadrada: ');

%Gráfica de la función
x = linspace(0, n);
y = x.^2 - n;
plot(x, y);
grid on;
xlabel('x');
ylabel('y');
title('Raíz cuadrada');


[x, iter] = newtonRaphsonFunction(n);

%Despliega resultados
display('Numbero de iteraciones: ');
display(iter);
display('x: ');
display(x);
display('f(x): ');
display(x^2 - n);