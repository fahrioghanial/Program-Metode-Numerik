/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Turunan Pertama
*/

clear;
clc;
printf('\nProgram Penghitung Turunan Pertama\n');
X = [0.10 0.12 0.14 0.16 0.18 0.20];
Y = [0.004 0.006 0.008 0.011 0.015 0.018];
printf('Diketahui Data Berikut:\n');
printf('x\tf(x)\n');
for i=1:6
    printf('%.2f\t%.3f\n', X(i),Y(i));
end

b=input('Masukkan nilai x yang akan dicari f`(x) nya = ');
h=0.02;
fAksen_maju = "null";
fAksen_mundur = "null";
fAksen_pusat = "null";
for i=1:6
    if b==X(i)
        if i-1 == 0
            fAksen_maju=(Y(i+1)-Y(i))/h;
        elseif i+1 == 7
            fAksen_mundur=(Y(i)-Y(i-1))/h;
        else    
        fAksen_maju=(Y(i+1)-Y(i))/h;
        fAksen_mundur=(Y(i)-Y(i-1))/h;
        fAksen_pusat=(Y(i+1)-Y(i-1))/(2*h);
        end
    end
end
printf('Jadi nilai f`(%.2f) adalah\t:\n',b);
if fAksen_mundur=="null" && fAksen_maju=="null" && fAksen_pusat=="null"
    printf('Nilai x yang anda masukkan tidak terdapat didalam tabel!');
elseif fAksen_mundur=="null" && fAksen_pusat=="null"
    printf('Berdasarkan Hampiran Beda-Maju :%.5f\n',fAksen_maju);
elseif fAksen_maju=="null" && fAksen_pusat=="null"
    printf('Berdasarkan Hampiran Beda-Mundur :%.5f\n',fAksen_mundur);
else
    printf('Berdasarkan Hampiran Beda-Maju :%.5f\n',fAksen_maju);
    printf('Berdasarkan Hampiran Beda-Mundur :%.5f\n',fAksen_mundur);
    printf('Berdasarkan Hampiran Beda-Pusat :%.5f\n',fAksen_pusat);
end

