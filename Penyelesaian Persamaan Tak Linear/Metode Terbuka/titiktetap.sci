/*
Mohamad Fahrio Ghanial Fatihah
140810190005
Metode Titik Tetap
*/

clear;
clc;
function hasil=f(x);
    hasil = %e^x-3*x;
endfunction

function hasil=g(x);
    hasil = 1/3*%e^x;
endfunction

function tetap()
    x=input('Masukkan tebakan awal x0 = ');
    printf('Toleransi yang digunakan berdasarkan |f(g(x))|');
    tol=input('Masukkan nilai toleransi = ');
    printf('Metode Iterasi Titik Tetap\n\n');
    i = 0;
    gx=g(x);
    absfx = abs(f(g(x)));
    while absfx > tol
        gx = g(x);
        fgx = f(g(x));
        printf('iterasi-%d ->\t x%d = %.4e\t x=g(x%d) = %.4e\t f(g(x%d)) = %.4e\n', i, i, x, i, gx, i, fgx);
        absfx = abs(f(g(x)));
        x = gx;
        i = i + 1;
    end
endfunction

