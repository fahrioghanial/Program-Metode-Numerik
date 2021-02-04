/*
Nama : Mohamad Fahrio Ghanial Fatihah
NPM : 140810190005
Deskripsi : Program Dekomposisi LU
*/

clear;
clc;
printf('\nProgram Penyelesaian SPL dengan Dekomposisi L-U\n')
printf('Ubah SPL menjadi matriks [A][X]=[B]\n')
printf('Masukkan SPL dalam bentuk matriks\n');
A = input('Masukkan elemen matriks A : ');
B = input('Masukkan elemen matriks B : ');
printf('Dekomposisi L-U\nMatriks A:');
disp(A);
printf('Matriks B:');
disp(B);
S = A(2,1)/A(1,1);
R = A(3,1)/A(1,1);
for j=1:3
    A(2,j)=A(2,j)-S*A(1,j);
    A(3,j)=A(3,j)-R*A(1,j);
end
T = A(3,2)/A(2,2);
for j=1:3
    A(3,j)=A(3,j)-T*A(2,j);
end
U=A;
L=[1 0 0; S 1 0; R T 1];
printf('\nMatriks A difaktorkan menjadi L dan U, sehingga [A]=[L][U]\n');
printf('Maka didapatkan:\nMatriks U:');
disp(U);
printf('Matriks L:');
disp(L);
printf('\nDiketahui [L][Y]=[B] dan [U][X]=[Y], maka diperoleh matriks Y dan X: \n')
Y(1,1)=B(1,1);
Y(2,1)=B(2,1)-L(2,1)*Y(1,1);
Y(3,1)=B(3,1)-L(3,1)*Y(1,1)-L(3,2)*Y(2,1);
printf('Matriks Y:')
disp(Y);
X(3,1) = Y(3,1)/U(3,3);
X(2,1) = (Y(2,1)-U(2,3)*X(3,1))/U(2,2);
X(1,1) = (Y(1,1)-U(1,2)*X(2,1)-U(1,3)*X(3,1))/U(1,1);
printf('Matriks X:');
disp(X);
printf('Jadi Penyelesaian SPL tersebut adalah:\n x1 = %.6f\t x2 = %.6f\t x3 = %.6f', X(1,1), X(2,1), X(3,1));
