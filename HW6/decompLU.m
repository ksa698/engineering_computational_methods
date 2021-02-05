%% Problem 1 HW6
%Ax = b
%Modify GE for LU decomp
%Input: A (square matrix)
%Output: A = combo of U (upper tri matrix) & L (lower tri matrix)

%% CODE
function [A] = decompLU(A)
[row,col]=size(A);                 %define size of row/col of A matrix
    if row ~= col
            error('A is not a square matrix')
    end
    for i=1:col-1                  %all but last col
        for c=i+1:row       
            factor=A(c,i)/A(i,i);  %elimination factor
            A(c,i:col)=A(c,i:col)-factor*A(i,i:col);  %upper tri matrix U
            A(c,i)=factor;                            %lower tri matrix L minus diag
        end
    end 
end 