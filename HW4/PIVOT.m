%% Problem 7 part c)
%partial pivoting

%% CODE
A=[2  -6 -1;-3 -1 7;-8 1 -2]; %define matrix A
b=[-38; -34; -20];            %define vector b
    
    if det(A)== 0   %error check if inverse exists
       fprintf('Not invertible, no unique solution! \n')
    end
    
[U,y] = forwardPIV(A,b)
x=backSub(U,y)
   