%% Problem 3 a) Jacobi Function
%Inputs: A,b,x0,max iter,conv tol,flag(norm)
%approx conv error for comparison w/ tol
%Output: soln, # iter

%% CODE
function [x,k]=jacobi(A,b,x0,maxIt,tol,flag)
[n,m]=size(A);
tempx=zeros(n,1);
k=1;

    for i=1:n
        tempx(i)=((b(i)-A(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n],1))/A(i,i));
    end
x=tempx;
    while norm(x-x0,flag)/norm(x,flag) > tol && k<=maxIt-1
        for i=1:n
            tempx(i)=((b(i)-A(i,[1:i-1,i+1:n])*x([1:i-1,i+1:n],1))/A(i,i));
        end
        x0=x;
        x=tempx;
        k=k+1;
    end 