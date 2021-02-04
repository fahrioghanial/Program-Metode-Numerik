/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Simpson1/3
*/

clear;
clc;
printf('\nProgram Integrasi Numerik Metode Simpson 1/3\n');
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

for r=1:(n-1)
    if modulo(r,2)==1
        sigma = sigma + 4*Y(index+1);
    else
        sigma=sigma+2*Y(index+1);
    end
    index=index+1;
end

I=(I+sigma)*h/3;

printf('\nJadi luas daerahnya  adalah : %.6f', I);

