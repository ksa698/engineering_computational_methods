%% Problem 6 part b) Ux=y
%back substitution (aka system from z to y to x)

%% CODE
function x=backSub(U,y)
x=zeros(size(y,1),1);       %coefficient defined bysize of b
[~,n]=size(U);              %define n by size of U matrix
    for row=n:-1:1          %start at n (bottom) to the top
        temp=0;
        for col=row+1:n     %summation of each value of each column per row to find coefficients 
            temp=temp+U(row,col)*x(col);
        end
        x(row)=(y(row)-temp)/U(row,row); %coefficients
    end
end