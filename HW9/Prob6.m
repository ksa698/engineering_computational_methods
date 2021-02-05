%% Problem 6 15.3
%cubic polynomial to data
%find coefficients, r^2, S y/x
clc; clear all;

%% CURVY CODE

x=[3 4 5 7 8 9 11 12]';
    x1=linspace(0,12);                          %x for graphing
y=[1.6 3.6 4.4 3.4 2.2 2.8 3.8 4.6]';
    cub=polyfit(x,y,3);
        f1=polyval(cub,x1);                     %y for graphing
    f=cub(1)*x.^3+cub(2)*x.^2+cub(3)*x+cub(4);  %actual function regression

fprintf("Cubic Polynomial: (%0.4f)*x^3 + (%0.4f)*x^2 + (%0.4f)*x + (%0.4f) \n",cub);
    sr=sum((y-f).^2);
    st=sum((y-mean(y)).^2);
    rSQR=(st-sr)/st
    s_yx=sqrt(sr/(8-4))
    
        
plot(x,y,'o')
    hold on
plot(x1,f1)
     ylim([-6 6])
     title('Cubic Poly Fit')
