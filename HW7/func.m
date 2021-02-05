%% Problem 5 part c)
%solve multi-dim root finding
%input: function
%output: f & J

%% CODE for Function
function [f J]=func(x)
l=length(x);
f=zeros(size(x));
J=zeros(1,1);

    f(1)=3*x(1)*sin(x(2))-2*sqrt(x(1)^2+x(2)^2)+5;
    f(2)=x(2)^4-9+x(1)^4+2*x(1)^2*x(2)^2;
    J(1,1)=3*sin(x(2))-(2*x(1))/sqrt(x(1)^2+x(2)^2);
    J(1,2)=3*x(1)*cos(x(2))-(2*x(1))/sqrt(x(1)^2+x(2)^2);
    J(2,1)=4*x(1)^3+4*x(1)*x(2)^2;
    J(2,2)=4*x(2)^3+4*x(1)^2*x(2);
end
    
