%% Problem 8 (9.14)
%use 6&7 to solve 9.14
%Q1=1

A=[-2 1 2 0 0 0;...     %define A matrix
   0 0 -2 1 2 0;...
   0 0 0 0 -2 3;...
   1 1 0 0 0 0;...
   0 -1 1 1 0 0;...
   0 0 0 -1 1 1]
b=[0; 0; 0; 1; 0; 0]    %define vector b
    
    if det(A)== 0       %error check if inverse exists
       fprintf('Not invertible, no unique solution! \n')
    end
  
[U,y] = forward(A,b) %since zeros along pivot this will give NaN
x=backSub(U,y)

[U,y] = forwardPIV(A,b)
x=backSub(U,y)