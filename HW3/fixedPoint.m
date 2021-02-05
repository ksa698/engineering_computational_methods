%% Problem 5 
%   Q: Develop code for fixed point

%% OUTPUT FILE
 fixedResult = fopen('fixed.txt','w');
 fprintf(fixedResult,' iter      old_xr       new_xr         f(new_xr)          ea              ef \n');
 
%% CODE
 f = @(x) (x*cos(pi*x))-(2*x^2)+1;
 g = @(x) (x*cos(pi*x))-(2*x^2)+1+x;

    maxITER=50;
    tol=0.0005;    %tolerance
    iter=0;
    ea=100;        %relative error
    old_xr=input('Enter initial guess:');    %need initial guess for fixed position

while ea>tol && iter<=maxITER
    iter=iter+1;
    new_xr=g(old_xr);                       %fixed point formula
    ea=abs((new_xr-old_xr)/new_xr)*100;     
    ef=abs(f(new_xr));
    
    fprintf(fixedResult,'%2d     %8.4d     %8.4d      %8.4d      %8.4d      %8.4d \n'...
    , iter, old_xr, new_xr, f(new_xr), ea, ef);

    old_xr=new_xr;
    
    if iter>maxITER
        fprintf('No result')
    end
end

fprintf(fixedResult,' The root is %8.4f \n', new_xr);
fprintf('Calculation complete! \n')
fprintf(" Root: %8.4f \n ", new_xr)