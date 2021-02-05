%%  Problem 3) Runge Function
%3 sets of points equidistant (linspace)
%x=5,11,21 points
%use LaGrange function
%plot interpolated eqn & original eqn

%% CODE
x=linspace(-1,1,300);
f=1./(1+25*x.^2);

    x5=linspace(-1,1,5);
        f5=1./(1+25.*x5.^2);
    x11=linspace(-1,1,11);
        f11=1./(1+25.*x11.^2);
    x21=linspace(-1,1,21);
        f21=1./(1+25.*x21.^2);

%Plotting original function
    plot(x,f)
    hold on
    
%Interpolation Functions 5,11,21
disp('LaGrange Polynomial: ')
    [y_int, ~]=laGrange2(x5,x5,f5) %suppress product output to condense answer (we like to keep asthetics)
        plot(x5,y_int)             %keep y_int output to see the EVOLUTION of interpolated equations

    [y_int, ~]=laGrange2(x11,x11,f11)
        plot(x11,y_int)

    [y_int, ~]=laGrange2(x21,x21,f21)
        plot(x21,y_int)
        
%Plotting info
    title('Lagrange + Runge Wombo Combo')
    legend('Original','5 points','11 points','21 points')
    %21 points is the most acurate interpolation because it has the most
    %points meaning that the distance between points is decreased(less
    %error).