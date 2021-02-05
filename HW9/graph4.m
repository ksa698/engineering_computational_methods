%% Problem 4 c)
%plot points and fit regression

%% CODE
clc; clear all;
x=[0.1 0.2 0.4 0.6 0.9 1.3 1.5  1.7 1.8];
y=[0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];

%Transform eqn & plot
y1=log(y./x);
    [a0,a1]=linReg(x,y1);

    %need interval for x axis plotting
    x1=0:0.01:2;
    f=exp(a0).*x1.*exp(a1*x1);
    
    plot(x,y,'o') %plots the individual data
    hold on
    plot(x1,f)
    title('4c')
    