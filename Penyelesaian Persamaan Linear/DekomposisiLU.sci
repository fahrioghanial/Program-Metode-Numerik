function LU()
    clear;
    clc;
    printf('\nProgram Penyelesaian SPL dengan Metode Dekomposisi LU\n')
printf('Ubah SPL menjadi matriks [A][X]=[H]\n')
printf('Masukkan SPL dalam bentuk matriks\n');
A = input('Masukkan elemen matriks A : ');
H = input('Masukkan elemen matriks H : ');
printf('Dekomposisi LU\nMatriks A:');
disp(A);
printf('Matriks H:');
disp(H);
U=[1 0 0; 0 1 0; 0 0 1];
L=[0 0 0; 0 0 0; 0 0 0];
L(1,1)=A(1,1);
L(2,1)=A(2,1);
L(3,1)=A(3,1);
U(1,2)=A(1,2)/A(1,1);
U(1,3)=A(1,3)/A(1,1);
L(2,2)=A(2,2)-L(2,1)*U(1,2);
L(3,2)=A(3,2)-L(3,1)*U(1,2);
U(2,3)=(A(2,3)-L(2,1)*U(1,3))/L(2,2);
L(3,3)=A(3,3)-(L(3,1)*U(1,3)+L(3,2)*U(2,3));
printf('\nMatriks A difaktorkan menjadi L dan U, sehingga [A]=[L][U]\n');
printf('Maka didapatkan:\nMatriks U:');
disp(U);
printf('Matriks L:');
disp(L);
printf('\nDiketahui [L][H`]=[H] dan [U][X]=[H`], maka diperoleh matriks H` dan X: \n')
Haks(1,1)=H(1,1)/L(1,1);
Haks(2,1)=(H(2,1)-L(2,1)*Haks(1,1))/L(2,2);
Haks(3,1)=(H(3,1)-L(3,1)*Haks(1,1)-L(3,2)*Haks(2,1))/L(3,3);
printf('Matriks H`:')
disp(Haks);
X(3,1) = Haks(3,1);
X(2,1) = Haks(2,1)-U(2,3)*X(3,1);
X(1,1) = Haks(1,1)-U(1,2)*X(2,1)-U(1,3)*X(3,1);
printf('Matriks X:');
disp(X);
printf('Jadi Penyelesaian SPL tersebut adalah:\n x1 = %.6f\t x2 = %.6f\t x3 = %.6f', X(1,1), X(2,1), X(3,1));

endfunction
