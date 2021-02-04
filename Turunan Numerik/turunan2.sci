/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Turunan Kedua
*/

clear;
clc;
printf('\nProgram Penghitung Turunan Kedua\n');
X = [0.10 0.12 0.14 0.16 0.18 0.20];
Y = [0.004 0.006 0.008 0.011 0.015 0.018];
printf('Diketahui Data Berikut:\n');
printf('x\tf(x)\n');
for i=1:6
    printf('%.2f\t%.3f\n', X(i),Y(i));
end

b=input('Masukkan nilai x yang akan dicari f``(x) nya = ');
h=0.02;
fDAksen_maju = "null";
fDAksen_mundur = "null";
fDAksen_pusat = "null";
for i=1:6
    if b==X(i)
        if i-1 == 0
            fDAksen_maju=(Y(i+2)-2*Y(i+1)+Y(i))/(h*h);
        elseif i-1 == 1
            fDAksen_maju=(Y(i+2)-2*Y(i+1)+Y(i))/(h*h);
            fDAksen_pusat=(Y(i+1)-2*Y(i)+Y(i-1))/(h*h);
        elseif i+1 == 7
            fDAksen_mundur=(Y(i-2)-2*Y(i-1)+Y(i))/(h*h);
        elseif i+1 == 6
            fDAksen_mundur=(Y(i-2)-2*Y(i-1)+Y(i))/(h*h);
            fDAksen_pusat=(Y(i+1)-2*Y(i)+Y(i-1))/(h*h);
        else    
        fDAksen_maju=(Y(i+2)-2*Y(i+1)+Y(i))/(h*h);
        fDAksen_mundur=(Y(i-2)-2*Y(i-1)+Y(i))/(h*h);
        fDAksen_pusat=(Y(i+1)-2*Y(i)+Y(i-1))/(h*h);
        end
    end
end
printf('Jadi nilai f``(%.2f) adalah\t:\n',b);
if fDAksen_mundur=="null" && fDAksen_maju=="null" && fDAksen_pusat=="null"
    printf('Nilai x yang anda masukkan tidak terdapat didalam tabel!');
elseif fDAksen_mundur=="null" && fDAksen_pusat=="null"
    printf('Berdasarkan Hampiran Beda-Maju :%.5f\n',fDAksen_maju);
elseif fDAksen_maju=="null" && fDAksen_pusat=="null"
    printf('Berdasarkan Hampiran Beda-Mundur :%.5f\n',fDAksen_mundur);
elseif fDAksen_maju=="null"
    printf('Berdasarkan Hampiran Beda-Mundur :%.5f\n',fDAksen_mundur);
    printf('Berdasarkan Hampiran Beda-Pusat :%.5f\n',fDAksen_pusat);
elseif fDAksen_mundur=="null"
    printf('Berdasarkan Hampiran Beda-Maju :%.5f\n',fDAksen_maju);
    printf('Berdasarkan Hampiran Beda-Pusat :%.5f\n',fDAksen_pusat);
else
    printf('Berdasarkan Hampiran Beda-Maju :%.5f\n',fDAksen_maju);
    printf('Berdasarkan Hampiran Beda-Mundur :%.5f\n',fDAksen_mundur);
    printf('Berdasarkan Hampiran Beda-Pusat :%.5f\n',fDAksen_pusat);
end

