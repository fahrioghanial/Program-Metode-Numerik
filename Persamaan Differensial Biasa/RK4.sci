/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program PDB Metode Runge-Kutta Orde 4
*/

clear;
clc;
printf('\nProgram PDB Metode Runge-Kutta Orde 4\n');
b=input('Masukkan nilai x yang akan dicari y(x) nya = ');
h=input('Masukkan nilai h  = ');
x0 = 0;
y0 = 0;
x = x0;
y = y0;
n = (b-x0)/h;

function turunan = f(x,y)
    turunan = x + y;
endfunction

k1 = h*f(x, y);
k2 = h*f(x+h/2, y+k1/2);
k3 = h*f(x+h/2, y+k2/2);
k4 = h*f(x+h, y+k3);
printf('n\tx\ty\t\tk1\t\tk2\t\tk3\t\tk4\n');
printf('%d\t%.2f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\n',0 , x, y, k1, k2, k3, k4);
for r=1:n
    y = y + (k1 + 2*k2 + 2*k3 + k4)/6;
    x = x+h;
    k1 = h*f(x, y);
    k2 = h*f(x+h/2, y+k1/2);
    k3 = h*f(x+h/2, y+k2/2);
    k4 = h*f(x+h, y+k3);
    printf('%d\t%.2f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\n',r , x, y, k1, k2, k3, k4);
end
printf('Jadi nilai y(%.2f) adalah : %.8f',b, y);







