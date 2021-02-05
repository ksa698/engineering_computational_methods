%% Problem 7 part a)
%partial pivoting for forward elimination

%% CODE

function [U,y] = forwardPIV(A,b)
[row,col]=size(A);   %define values of row/col based off size A matrix
[rowb,colb]=size(b); %define values of row/col based off size b
    if row ~= col || rowb ~= row  %error check if dimensions match
        fprintf('Size is not compatible, inner dimensions do not match');
        return
    else %proceed to GE

    for i=1:col-1       %partial pivoting
        temp=A(i,i);    %conditions to check which row has > abs
        temp_b=0;
        tempRow=zeros(1,col);
        for i1=i+1:row
            if abs(temp) < abs(A(i1,i)) %pivot rows aka updates values in A matrix
                tempRow=A(i,:);
                A(i,:)=A(i1,:);
                A(i1,:)=tempRow;
                
                temp_b=b(i);        %change values on vector b
                b(i)=b(i1);
                b(i1)=temp_b;
                temp=A(i,i);
            end
        end
        
        for c=i+1:row %same elimination process from forward function
            factor=A(c,i)/A(i,i);                    %elimination factor
            A(c,i:col)=A(c,i:col)-factor*A(i,i:col); %change rows for matrix A
            b(c)=b(c)-factor*b(i);                   %change rows for b
        end
    end
    end 
U=A;   %defines output for next function (U = upper triangular matrix)
y=b;   %%defines output for next function (b = new right hand side)
end