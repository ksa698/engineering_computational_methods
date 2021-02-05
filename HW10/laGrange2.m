%% Problem 2 b)
%function (n-1) order LaGrange polynomial & interpolates
%inputs: vector (x val), vector (y val), vector (interpolate val)
%output: corresponding func val
%plot base & interpolation func

%% CODE
function [y_int, product]=laGrange2(x_int,x,y)
    if size(x)==size(y)    %size check
            n=length(x);   %make n length for for loop conditions
            y_int=0;
            product=ones(n,length(x_int));
        for i=1:n
            for j=1:n
                if i~=j
                    product(i,:)=product(i,:).*(x_int-x(j))/(x(i)-x(j)); %L1, L2, L3 bases 
                end
            end
        end
        for i=1:n
            y_int=y_int+y(i).*product(i,:); %creates the polynomial in a for loop L1(y1)+...
        end
    else
            disp('Error: change the size')
    end
end 