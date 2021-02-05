%% Problem 4 14.8
% plot data & curve fits of regression


%% CODE
clc; clear all;

x=[0.1 0.2 0.4 0.6 0.9 1.3 1.5 1.7 1.8];
y=[0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];

f1=polyfit(x,y,3);
    x1=linspace(0,12);
    yy=polyval(f1,x1);
f=f1(1)*x.^3+f1(2)*x.^2+f1(3)*x+f1(4);

fprintf("Cubic Polynomial: (%0.4f)*x^3 + (%0.4f)*x^2 + (%0.4f)*x + (%0.4f) \n",f1);
    sr=sum((y-f).^2);
    st=sum((y-mean(y)).^2);
    rSQR=(st-sr)/st
    s_yx=sqrt(sr/(8-4))
    
    
    plot(x,y,'o')
    hold on
plot(x1,yy)


