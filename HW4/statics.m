%% Problem 3 8.6

A=[-cos(pi/6) 0 cos(pi/3) 0 0 0;...
   -sin(pi/6) 0 -sin(pi/3) 0 0 0;...
   cos(pi/6) 1 0 1 0 0;...
   sin(pi/6) 0 0 0 1 0;...
   0 -1 -cos(pi/3) 0 0 0;...
   0 0 sin(pi/3) 0 0 1];

b=[0; 1000; 0; 0; 0; 0];

result=A\b