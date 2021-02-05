%% Problem 6 part a)
%Ax = b
%Function for forward elimination 
%Input: A (square matrix), b (vector)
%Output: U (upper triangluar matrix) & y (modified vector)

%% CODE
function [U,y] = forward(A,b)
[row,col]=size(A);      %define size of row/col for A matrix
[rowb,colb]=size(b);    %define size of row/col for b 

if row ~= col || rowb ~= row %error check if dimensions match
    fprintf('Size is not compatible, inner dimensions do not match');
        return
else
    for i=1:col-1           %all but last col
        for c=i+1:row       
            factor=A(c,i)/A(i,i);  %elimination factor
            A(c,i:col)=A(c,i:col)-factor*A(i,i:col);  %change rows for matrix A
            b(c)=b(c)-factor*b(i);                    %change rows for b
        end
    end
end 
U=A;        %defines output for next function (U = upper triangular matrix)
y=b;        %defines output for next function (b = new right hand side)
end 
