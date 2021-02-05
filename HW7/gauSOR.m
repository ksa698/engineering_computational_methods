%% Problem 6 Gauss-Seidel
%change #4 for relaxation parameter lambda
%lambda = 1.0, 0.6, 1.5

%% CODE
function [x,k]=gauSOR(A,b,x0,maxIt,tol,flag,SOR)
[n,m]=size(A);
tempx=zeros(n,1);
k=1;

    for i=1:n
     tempx(i)=((b(i)-A(i,1:i-1)*tempx(1:i-1,1)-A(i,i+1:n)*x0(i+1:n,1))/A(i,i));
    end
x=tempx;
    while norm(x-x0,flag)/norm(x,flag) > tol && k <= maxIt-1
        for i=1:n
            tempx(i)=((b(i)-A(i,1:i-1)*tempx(1:i-1,1)-A(i,i+1:n)*x(i+1:n,1))/A(i,i));
        end
        tempx=(SOR*x)+(1-SOR)*x0;
        
    x0=x;
    x=tempx;
    k=k+1;
    end 
    