%% Problem 5 function

function [a0,a1]=linReg(x,y)
    if size(x)==size(y)    %size check
        n=length(x);
        %Information for data table to make calculation easier
        sum_x=sum(x);       
        sum_y=sum(y);       
        sum_xy=sum(x.*y);
        sum_xx=sum(x.^2);
%General Eqns for finding coefficients         
        a1=(n*sum_xy-sum_x*sum_y)/(n*sum_xx-sum_x^2);
        a0=(sum_y-a1*sum_x)/n;
%Goodness of Fit (test the variance level)
        sr=sum((y-(a0+a1*x)).^2);
            sr_sum=sum(sr);
        st=sum((y-mean(y)).^2);
            st_sum=sum(st);
        goodFit=(st_sum-sr_sum)/st_sum;
    else
        disp('Error: change the size')
    end
   disp('Goodness of Fit:')
   disp(goodFit)
end