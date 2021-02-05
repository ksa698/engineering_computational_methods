%% Problem 1 part a)
%inverse of square matrix (col by col)
%use LU factorization
%input = square matrix

%% CODE BOIII
%check size for square matrix
function [invA] = inverseLU(A)
[rowA,col]=size(A);
    if rowA ~= col
                error('A is not a square matrix')
    end
    
e=zeros(col,1);
x=zeros(col,col);
    for row=1:col
        e(row)=1;
        [y] = forwardSub(A,e);
        invA(:,row)=LUbackSub(A,y);
        e(row)=0;
    end
end
    
    