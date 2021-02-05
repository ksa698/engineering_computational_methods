%% Problem 6 b)
%Use problem 1 inputs
%conv tol 1*10^-5
% 2 norm
%0 vector = initial guess
%SOR=1,0.6,1.5
%HELPPPPPPP
%% CODE
A=[8 2 -2 2;0 5 3 -1;3 -3 10 0;4 1 -1 7];
b=[1;1;1;1];
x0=[0;0;0;0];
tol=10^-5;
flag=inf;

    maxIt=100; 
    [x,iter]=gauSOR(A,b,x0,maxIt,tol,flag,1) %SOR value 1
        %no relaxation aka solved normally, which is why it converges so
        %quickly after 2 iterations. This makes it effective and efficient
        %as it is less expensive than the other SOR values.
    maxIt=100; 
    [x,iter]=gauSOR(A,b,x0,maxIt,tol,flag,0.6) %SOR value 0.6
           %underrelaxation: less weight towards the new solution aka it is
           %elongated. The convergence is dampened so that more iterations
           %are carried and the final solution is not as accurate as SOR=1.
   maxIt=100;  
   [x,iter]=gauSOR(A,b,x0,maxIt,tol,flag,1.5) %SOR value 1.5
            %overrelaxation: more weight towards the new soluion. This SOR
            %slowly reaches an accurate solution which is why it took far
            %more iterations than SOR=1 but has the same first value of the
            %eig vector. However, the "true" solution is still not completely
            %correct
            
            
            
