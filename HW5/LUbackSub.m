%% Problem 3 part c)
%Backward Sub Ux=y
%Input: A (square matrix), y (vector)
%Output: x (coefficients vector)

%% CODE
function [x] = LUbackSub(A,y)
U=triu(A);                  %U=upper tri matrix of A
x=zeros(size(y,1),1);       %coefficient defined by size of y
[~,n]=size(U);              %define n by size of U matrix
    for row=n:-1:1          %start at n (bottom) to the top
        temp=0;
        for col=row+1:n     %summation of each value of each column per row to find coefficients 
            temp=temp+U(row,col)*x(col);
        end
        x(row)=(y(row)-temp)/U(row,row); %soln WOOOO
    end    
end