%% Problem 6 part c)

A=[10  2 -1;-3 -6 2;1 1 5];     %define A
b=[27; -61.5; -21.5];           %define b 
    
    if det(A)== 0               %check if invertible (aka has inverse)
       fprintf('Not invertible, no unique solution! \n')
    end
    
[U,y] = forward(A,b)
x=backSub(U,y)
          
%will return U,y,x aka A,b,x where x is the coefficients that solve the
%system of eqn

