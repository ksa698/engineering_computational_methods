%% Problem 2 a)Linear method...b)Cubic method
    %3 sets of points equidistant (linspace) [-1,1]...x=5,11,21
    %fits using splines (method = 'linear' & 'spline')
    %interp1(x,v,xq,method)
        %aka interp1(x val,y val (or function),300 x val,'method')
    %include matlab function in solution

%% CODE 
clc; clear all;
x=linspace(-1,1,250);           %"xq"
f=1./(1+25*x.^2);               %original function

    x5=linspace(-1,1,5);        %x5..."x"
        f5=1./(1+25.*x5.^2);    %"v"
    x11=linspace(-1,1,11);      %x11..."x"
        f11=1./(1+25.*x11.^2);  %"v"
    x21=linspace(-1,1,21);      %x21..."x"
        f21=1./(1+25.*x21.^2);  %"v"
        
%Linear Spline Interpolation
    i5=interp1(x5,f5,x,'linear');
    i11=interp1(x11,f11,x,'linear');
    i21=interp1(x21,f21,x,'linear'); 
    
%Cubic Spline Interpolation (b)
    i5s=interp1(x5,f5,x,'spline');
    i11s=interp1(x11,f11,x,'spline');
    i21s=interp1(x21,f21,x,'spline');
    
%Plot Linear Spline
    plot(x,f,x,i5,x,i11,x,i21)
    ylim([0 1])
    legend('Original','5 points','11 points','21 points') 
    title('Linear Splines: 5,11,21')

%Plot Cubic Spline
    figure
    plot(x,f,x,i5s,x,i11s,x,i21s)
    ylim([-.3 1])
    legend('Original','5 points','11 points','21 points') 
    title('Cubic Splines: 5,11,21')