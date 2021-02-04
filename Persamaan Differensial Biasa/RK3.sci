/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program PDB Metode Runge-Kutta Orde 3
*/

clear;
clc;
printf('\nProgram PDB Metode Runge-Kutta Orde 3\n');
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

printf('n\tx\ty\n');
printf('%d\t%.2f\t%.8f\n',0 , x, y);
for r=1:n
    k1 = h*f(x, y);
    k2 = h*f(x+h/2, y+k1/2);
    k3 = h*f(x+h, y-k1+2*k2);
    y = y + (k1 + 4*k2 + k3)/6;
    x = x+h;
    printf('%d\t%.2f\t%.8f\n',r , x, y);
end
printf('Jadi nilai y(%.2f) adalah : %.8f',b, y);







