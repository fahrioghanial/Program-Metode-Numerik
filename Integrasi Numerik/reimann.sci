/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program 
*/

clear;
clc;
printf('\nProgram Integrasi Numerik Metode Reimann\n');
X = [1.0 1.3 1.6 1.9 2.2];
Y = [3.0 4.0 6.0 5.0 7.0];
printf('Diketahui Data Berikut:\n');
//Menampilkan data
for i=1:5
    printf('n = %d\t x = %.2f\t f(x) = %.6f\n',i-1, X(i),Y(i));
end
a=X(1);
b=X(5);
n = 4;
h = (b-a)/n;
sigma=0;
for r=1:n+1
    sigma=sigma+Y(r);
end
I=h*sigma;

printf('\nJadi luas daerahnya  adalah : %.6f', I);


