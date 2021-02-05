%% Problem 5 part d)
%initial guess x0 = [1 1]'
%conv tol 10^-5
%show result=root of eqn
%max iter =100

%% CODE
x=[1;1];
x=multNR(@func,x,100);
x