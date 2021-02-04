/*
Mohamad Fahrio Ghanial Fatihah
140810190005
Metode Sekan
*/

clear;
clc;
function hasil=f(x);
    hasil = x^3-x-3;
endfunction

function sekan()
    xi=input('Masukkan tebakan awal x0 = ');
    xiplus1=input('Masukkan tebakan awal x1 = ');
    printf('Toleransi yang digunakan berdasarkan |f(x[i+1])|');
    tol=input('Masukkan nilai toleransi = ');
    printf('Metode Sekan\n\n');
    i = 0;
    fxi = f(xi);
    fxiplus1 = f(xiplus1);
    absfxiplus1 = abs(f(xiplus1));
    while absfxiplus1 > tol
    printf('iterasi-%d ->\t x%d = %.6e\t x%d = %.6e\t f(x[%d]) = %.6e\t f(x[%d]) = %.6e\n', i, i, xi, i+1, xiplus1, i, fxi, i+1, fxiplus1);
    absfxiplus1 = abs(f(xiplus1));
    tempx = xiplus1;
    xiplus1 = xiplus1-fxiplus1*(xiplus1-xi)/(fxiplus1-fxi);
    xi = tempx;
    fxi = f(xi);
    fxiplus1 = f(xiplus1);
    i = i + 1;
    end
endfunction

