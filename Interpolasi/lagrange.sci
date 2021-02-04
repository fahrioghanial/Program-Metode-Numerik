/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Metode Lagrange
*/

clear;
clc;
printf('\nProgram Metode Interpolasi Lagrange\n');
X = [0.10 0.12 0.14 0.16 0.18 0.20];
Y = [0.004 0.006 0.008 0.011 0.015 0.018];
printf('Diketahui Data Berikut:\n');
printf('x\tf(x)\n');
for i=1:6
    printf('%.2f\t%.3f\n', X(i),Y(i));
end
x=input('Masukkan nilai x yang akan dicari f(x)nya = ');
;

L = 0;
for i = 1:6
    pr = 1;
    for j = 1:6
        if j ~= i
            pr = pr * (x-X(j))/(X(i)-X(j));
        end
    end
    L = L + Y(i)*pr;
end
hasil = L;
printf('Orde yang digunakan adalah orde terbesar yaitu orde 5\nJadi nilai f(%.2f) adalah : %.6f', x, L);
