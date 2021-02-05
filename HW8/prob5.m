%% Problem 5 
A=[3 0 -2;-7 0 4; 4 0 -3];
B=[0 0.95 0.6;0.8 0 0;0 0.5 0];
C=[6 -3 2 4;-1 2 -1 4;5 -1 -8 -2;7 -4 -2 -5];

tol=10^-5;
maxIt=300;

    [eVAL,eVECT,k]=powerM(A,maxIt,tol)
    [eVAL,eVECT,k]=powerM(B,maxIt,tol)
    [eVAL,eVECT,k]=powerM(C,maxIt,tol)