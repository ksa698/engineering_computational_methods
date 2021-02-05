%% Problem 3 part b)
%Forward Sub Ly=b
%Input: A (square matrix), b (vector)
%Output: y (coefficients vector)

%% CODE
function [y] = forwardSub(A,b)
L=tril(A,-1)+diag(ones(1,size(A,1))); %creates lower tri matrix from A, w/ diagonal of ones
y=zeros(size(b,1),1);                 %coefficient vector defined by size of b
[~,n]=size(L);                        %define n by size of L matrix
    for row=1:+1:n                    %forward sub from top to bottom
        temp=0;
        for col=1:row-1               %summation of each value of each column per row to find coefficients 
            temp=temp+L(row,col)*y(col);
        end
        y(row)=(b(row)-temp);         %coefficient vector set up for next step (back sub)
    end
end