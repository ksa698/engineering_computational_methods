%% Problem 3 part b)
%Use problem 1 inputs
%conv tol 1*10^-5
% 2 norm
%0 vector = initial guess

%% CODE
A=[5 3 -1;-4 -10 2; 1 0 7];
b=[48;-106;54];
x0=[0;0;0];
tol=10^-5;
flag=2;

    maxIt=1; %iteration 1
    [x,iter]=jacobi(A,b,x0,maxIt,tol,flag)
    
    maxIt=2; %iteration 2
    [x,iter]=jacobi(A,b,x0,maxIt,tol,flag)
    
    maxIt=3; %iteration 3
    [x,iter]=jacobi(A,b,x0,maxIt,tol,flag)
    
    maxIt=100; %up to tolerance
    [x,iter]=jacobi(A,b,x0,maxIt,tol,flag)