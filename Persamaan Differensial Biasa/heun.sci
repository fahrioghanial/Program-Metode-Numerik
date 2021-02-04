/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program PDB Metode Heun
*/

clear;
clc;
printf('\nProgram PDB Metode Heun\n');
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

for r=1:n
    y_s = y;
    y = y+h*f(x,y);
    y = y_s + h/2 * ((f(x,y_s)+f(x+h,y)));
    x=x+h;
end
hasil=y;
printf('Jadi nilai y(%.2f) adalah : %.8f',b, hasil);








