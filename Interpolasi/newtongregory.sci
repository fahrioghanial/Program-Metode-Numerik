/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Metode Newton-Gregory Forward
*/

clear;
clc;
printf('\nProgram Metode Newton-Gregory Forward\n');
X = [0.10 0.12 0.14 0.16 0.18 0.20];
Y = [0.004 0.006 0.008 0.011 0.015 0.018];
printf('Diketahui Data Berikut:\n');
//Menampilkan data
printf('x\tf(x)\n');
for i=1:6
    printf('%.2f\t%.3f\n', X(i),Y(i));
end
x=input('Masukkan nilai x yang akan dicari f(x)nya = ');

//Fungsi pencari faktorial
function faktorial=faktorial(p)
    fak=1;
    for k=2 : p
        fak=fak*k;
    end
    faktorial=fak;
endfunction

//Menyimpan Y[k] pada kolom 1 matriks TS (tabel selisih)
for k=1:6
    TS(k,1)=Y(k);
end

//Membentuk tabel selisih
for k=2:6
    for i=1:7-k
        TS(i,k)=TS(i+1,k-1)-TS(i,k-1);
    end
end

//Jarak antar titik
h=X(2)-X(1);

//Menghitung p(x)
//Orde yang digunakan adalah orde terbesar (orde 5)
s=(x - X(1))/h;
jumlah=TS(1,1);
for i=2:6
    suku=TS(1,i);
    for k=0:i-2
        suku=suku*(s-k);
    end
    suku=suku/faktorial(i-1);
    jumlah=jumlah+suku;
end
hasil=jumlah;
printf('Orde yang digunakan adalah orde terbesar yaitu orde 5\nJadi nilai f(%.2f) adalah : %.6f', x, hasil);







