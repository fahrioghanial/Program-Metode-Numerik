/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Metode Trapezoida
*/

clear;
clc;
printf('\nProgram Integrasi Numerik Metode Trapezoida\n');
X = [0.10 0.12 0.14 0.16 0.18 0.20];
Y = [0.004 0.006 0.008 0.011 0.015 0.018];
printf('Diketahui Data Berikut:\n');
//Menampilkan data
printf('x\tf(x)\n');
for i=1:6
    printf('%.2f\t%.3f\n', X(i),Y(i));
end
a=input('Masukkan batas awal x = ');
b=input('Masukkan batas akhir x = ');
h = 0.02;
n=(b-a)/h;

for i=1:6
    if a == X(i)
        index=i;
    end
    if b == X(i)
        indexAkhir=i;
    end
end    

I = Y(index) + Y(indexAkhir);
sigma=0;

for i=1 :(n-1)
    sigma=sigma+2*Y(index+1);
    index=index+1;
end
I=(I+sigma)*h/2;
printf('Jadi luas daerahnya  adalah : %.6f', I);
