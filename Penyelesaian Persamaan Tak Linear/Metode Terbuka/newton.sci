/*
Mohamad Fahrio Ghanial Fatihah
140810190005
Metode Newton Raphson
*/

clear;
clc;
function hasil=f(x);
    hasil = %e^x-3*x^2;
endfunction

function hasil=turunanf(x);
    hasil = %e^x-6*x;
endfunction

function newton()
    x=input('Masukkan tebakan awal x0 = ');
    printf('Toleransi yang digunakan berdasarkan |f(x)|');
    tol=input('Masukkan nilai toleransi = ');
    printf('Metode Newton-Raphson\n\n');
    i = 0;
    absfx = abs(f(x));
    while absfx > tol
        fx = f(x);
        fnx = turunanf(x);
        printf('iterasi-%d ->\t x%d = %.4e\t f(x%d) = %.4e\t f`(x%d) = %.4e\n', i, i, x, i, fx, i, fnx);
        absfx = abs(f(x));
        x = x - (fx / fnx);
        i = i + 1;
    end
endfunction
