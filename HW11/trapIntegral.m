%% Problem  5 a)
%function compute composite trapezoidal integral
%(hardcode) function, define: a&b (bounds), n (# segments)

%% CODE
function [I]=trapIntegral(func,a,b,n)
h=(b-a)/n;
x=a;
sum=0;
sum=func(x);
    for i=1:n-1
        x=x+h;
        sum=sum+2*func(x);
    end
    sum=sum+func(b);
    I=(h/2)*sum;
disp('Trapezoidal Integral= \n')
end