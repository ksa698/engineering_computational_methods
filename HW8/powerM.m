%% Problem 5 HW 8
%function power method
%find dominant eig value/vector 
%input: square matrix,conv tol, max iter
%output: dom eig value & vector (normalize aka inf norm)

%% CODE
function [eVAL,eVECT,k]=powerM(A,maxIt,tol)
[n,m]=size(A);
x0=ones(n,1);
tempx=zeros(n,1);
k=0;
error=1;
    
    while error > tol && k < maxIt
        tempx=A*x0;
        tempx=tempx/(norm(tempx,2));
        lambda=(x0)'*A*x0;
        error=norm(A*tempx-lambda*tempx,2);
        x0=tempx;
        k=k+1;
    end
    eVAL=norm((x0)'*A*x0,inf);  %the output will be the absolute value of the dominant eig value
    eVECT=x0;   
end
        