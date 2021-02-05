%% Problem 2 a)
%function (n-1) order Newton polynomial & interpolates
%inputs: vector (x val), vector (y val), vector (interpolate val)
%output: coeff of poly (vector b1 b2 bn), corresponding func val
%plot base & interpolation func

%% CODE
function [b,y_int]=newtPoly(x_int,x,y)
    if size(x)==size(y)    %size check
            n=length(x);   %establish n length to start the for loop conditions
       b(:,1)=y(:);        %establish start for the divided difference
       %Divided difference
           for j=2:n        %creates matrix for coefficients
               for i=1:n-j+1
                   b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i)); %actual divided difference
               end
           end
       %Interpolate for point x_int
           y_int=b(1,1);
           mult=1;
           for j=1:n-1                  %goes through the first row for the coefficients aka b vals
               mult=mult*(x_int-x(j));  %does the (x-x1)(x-x2)...
               y_int=y_int+b(1,j+1)*mult; 
           end
    else
            disp('Error: change the size')
    end
end 