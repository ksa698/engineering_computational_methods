%% Problem 2 c)
%test functions w/ t=0.23
%plot bases & interpolation func
clc; clear all;

%% Newton
x_int=0.23;                     %gives you value for x=0.23
x=[0.25 0.125 0.375 0 0.5]';
y=[7.75 6.24 4.85 0 0]';

disp('Newton Polynomial: ')      
[b,y_int]=newtPoly(x_int,x,y)

%plotting original points
plot(x,y,'o')
hold on
    %plotting info
        x1=linspace(0,0.5);
    b1=b(1,1).*x1.^0;
    b2=b(1,2).*(x1-0.25);
    b3=b(1,3).*(x1-.25).*(x1-.125);
    b4=b(1,4).*(x1-.25).*(x1-.125).*(x1-.375);
    b5=b(1,5).*(x1-.25).*(x1-.125).*(x1-.375).*x1;
    f1=b1+b2+b3+b4+b5;
        plot(x1,b1,x1,b2,x1,b3,x1,b4,x1,b5,x1,f1)
        title('Newton')
        legend('X & Y','Base 1','Base 2','Base 3', 'Base 4', 'Base 5','Interpolation')

%% LaGrange 
x_int=0.23;
    xx=linspace(0,.5);
xL=[0.25 0.125 0.375 0 0.5]';
yL=[7.75 6.24 4.85 0 0]';

disp('LaGrange Polynomial:')            %solves for products of 0.23
[y_int, product]=laGrange2(x_int,xL,yL)
    [y_int, product]=laGrange2(xx,xL,yL); %interpolation of vector values 0,0.5
    
%plotting original points & interpolation line
    figure
        plot(x,y,'o')
        hold on
        plot(xx,y_int)
        title('LaGrange')
        legend('X & Y','Interpolated')
%bases plotting for LaGrange
    figure
        plot(xx,product(1,:),xx,product(2,:),xx,product(3,:),xx,product(4,:),xx,product(5,:))
        title('LaGrange Bases')
        legend('Base 1','Base 2','Base 3', 'Base 4', 'Base 5')
        
        
        
        