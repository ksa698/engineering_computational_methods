A=[7 1 0 3 -4 2;...         %Define A
   1 5 1 4 3 4;...
   -2 6 6 2 9 1;...
   0 1 5 2 1 -3;...
   2 7 4 -1 8 0;...
   5 -3 -4 6 7 1];
b1=[13 -5 0 19 1 22]';      %Define b1
b2=[13 -1 20 -43 10 5]';    %Define b2
b3=[-20 30 6 7 -15 -41]';   %Define b3
b4=[50 55 60 65 70 75]';    %Define b4

[A] = decompLU(A)       %only need to decompose into L&U once

[y] = forwardSub(A,b1);
[x1] = LUbackSub(A,y)

[y] = forwardSub(A,b2);
[x2] = LUbackSub(A,y)

[y] = forwardSub(A,b3);
[x3] = LUbackSub(A,y)

[y] = forwardSub(A,b4);
[x4] = LUbackSub(A,y)