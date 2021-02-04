/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Metode Beda Terbagi Newton
*/

clear;
clc;
printf('\nProgram Metode Beda Terbagi Newton\n');
X = [0.10 0.12 0.14 0.16 0.18 0.20];
Y = [0.004 0.006 0.008 0.011 0.015 0.018];
printf('Diketahui Data Berikut:\n');
//Menampilkan data
printf('x\tf(x)\n');
for i=1:6
    printf('%.2f\t%.3f\n', X(i),Y(i));
end
x=input('Masukkan nilai x yang akan dicari f(x)nya = ');

//Menyimpan Y[k] pada kolom 1 dari matriks ST (selisih terbagi)
for k=1:6
    ST(k,1)=Y(k);
end
//Membuat tabel selisih terbagi
for k=2:6
    for i=1 : 7-k
        ST(i,k)=(ST(i+1,k-1)-ST(i,k-1))/(X(i-1+k)-X(i));
    end 
end
jumlah=ST(1,1);

//Menghitung p(x)
//Orde yang digunakan adalah orde terbesar (orde 5)
for i=2:6
    suku=ST(1,i);
    for k=1 : i-1
        suku=suku*(x-X(k));
    end
    jumlah=jumlah+suku;
end
hasil=jumlah;

printf('Orde yang digunakan adalah orde terbesar yaitu orde 5\nJadi nilai f(%.2f) adalah : %.6f', x, hasil);
