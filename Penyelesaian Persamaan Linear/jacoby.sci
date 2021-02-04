/*
Mohamad Fahrio Ghanial Fatihah
140810190005
*/

function jacoby()
    clear;
clc;
    printf('\nProgram Penyelesaian SPL dengan Metode Iterasi Jacoby\n')
printf('Ubah SPL menjadi matriks [A][X]=[H]\n')
printf('Masukkan SPL dalam bentuk matriks\n');
A = input('Masukkan elemen matriks A : ');
H = input('Masukkan elemen matriks H : ');
x0 = input('Masukkan nilai awal x0 : ');
y0 = input('Masukkan nilai awal y0 : ');
z0 = input('Masukkan nilai awal z0 : ');
x = (H(1,1)-A(1,2)*y0-A(1,3)*z0)/A(1,1);
y = (H(2,1)-A(2,1)*x0-A(2,3)*z0)/A(2,2);
z = (H(3,1)-A(3,1)*x0-A(3,2)*y0)/A(3,3);
i = 1;
galatx = abs((x-x0)/x);
galaty = abs((y-y0)/y);
galatz = abs((z-z0)/z);
tol = 0.000001;
printf('iterasi-%d ->\t x = %.4e\t y = %.4e\t z = %.4e\n', i, x, y, z);
printf('galatx = %.4e\t galaty = %.4e\t galatz = %.4e\n\n', galatx, galaty, galatz);
i=2;
    while (galaty > tol && galatx > tol && galatz > tol) 
        xtemp = x;
        ytemp = y;
        ztemp = z;
        x = (H(1,1)-A(1,2)*ytemp-A(1,3)*ztemp)/A(1,1);
        y = (H(2,1)-A(2,1)*xtemp-A(2,3)*ztemp)/A(2,2);
        z = (H(3,1)-A(3,1)*xtemp-A(3,2)*ytemp)/A(3,3);
        printf('iterasi-%d ->\t x = %.4e\t y = %.4e\t z = %.4e\n', i, x, y, z);
        galatx = abs((x-xtemp)/x);
        galaty = abs((y-ytemp)/y);
        galatz = abs((z-ztemp)/z);
        printf('galatx = %.4e\t galaty = %.4e\t galatz = %.4e\n\n', galatx, galaty, galatz);
        i = i + 1;
    end
i = i - 1;
printf('\nIterasi terhenti pada iterasi ke-%d\n', i);
printf('Jadi Penyelesaian SPL tersebut adalah:\n x = %.4e\t y = %.4e\t z = %.4e', x, y, z);
endfunction


