/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program PDB Metode Euler
*/

clear;
clc;
printf('\nProgram PDB Metode Euler\n');
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
    y = y + h*f(x,y);
    x = x+h;
    printf('%d\t%.2f\t%.8f\n',r , x, y);
end
printf('Jadi nilai y(%.2f) adalah : %.8f',b, y);








