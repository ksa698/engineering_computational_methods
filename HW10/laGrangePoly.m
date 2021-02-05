%% Problem 2 b)
%function (n-1) order LaGrange polynomial & interpolates
%inputs: vector (x val), vector (y val), vector (interpolate val)
%output: corresponding func val
%plot base & interpolation func

%% CODE
function [y_int]=laGrangePoly(x_int,x,y)
    if size(x)==size(y)    %size check
            n=length(x);
            y_int=0;
            product=0;
        for i=1:n
            product=y(i);
            for j=1:n
                if i~=j
                    product=product.*(x_int-x(j))/(x(i)-x(j));
                    disp(product) %change into a matrix
                end
            end
            y_int=y_int+product;
        end
   else
            disp('Error: change the size')
    end
end 
