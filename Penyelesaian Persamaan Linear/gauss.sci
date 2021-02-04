/*
Mohamad Fahrio Ghanial Fatihah
140810190005
*/

function gauss()
    clear;
clc;
    printf('\nProgram Penyelesaian SPL dengan Metode Eliminasi Gauss\n')
printf('Ubah SPL menjadi matriks [A][X]=[H]\n')
printf('Masukkan SPL dalam bentuk matriks\n');
A = input('Masukkan elemen matriks A : ');
H = input('Masukkan elemen matriks H : ');
ML = [A(1,1) A(1,2) A(1,3) H(1,1); A(2,1) A(2,2) A(2,3) H(2,1); A(3,1) A(3,2) A(3,3) H(3,1)];
printf('Matriks Lengkap\n');
disp(ML);
S = ML(2,1)/ML(1,1);
R = ML(3,1)/ML(1,1);
for j=1:4
    ML(2,j)=ML(2,j)-S*ML(1,j);
    ML(3,j)=ML(3,j)-R*ML(1,j);
end
T = ML(3,2)/ML(2,2);
for j=1:4
    ML(3,j)=ML(3,j)-T*ML(2,j);
end
x3 = ML(3,4)/ML(3,3);
x2 = (ML(2,4)-ML(2,3)*x3)/ML(2,2);
x1 = (ML(1,4)-ML(1,2)*x2-ML(1,3)*x3)/ML(1,1);
printf('\nMatriks Lengkap yang menjadi matriks segitiga atas\n');
disp(ML);
printf('Jadi Penyelesaian SPL tersebut adalah:\n x1 = %.6f\t x2 = %.6f\t x3 = %.6f', x1, x2, x3);

endfunction
