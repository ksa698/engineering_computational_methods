%% Problem 6 
%   Q: Develop code for Newton R Method

%% OUTPUT FILE
 newtonResult = fopen('newtonR.txt','w');
 fprintf(newtonResult,' iter    old_xr       new_xr       f(new_xr)        ea           ef \n');
 
%% CODE
f = @(x) (x*cos(pi*x))-(2*x^2)+1;
f_prime = @(x) (cos(pi*x)-(x*sin(pi*x)*pi)-4*x);
    maxITER=50;
    tol=0.0005;    %tolerance
    iter=0;
    ea=100;        %relative error
    old_xr=input('Enter initial guess:');    %need initial guess for fixed position

while ea>tol && iter<=maxITER
    iter=iter+1;
    new_xr=(old_xr)-(f(old_xr)/f_prime(old_xr));           %newton R formula
    ea=abs((new_xr-old_xr)/new_xr)*100;     
    ef=abs(f(new_xr));
    
    
    fprintf(newtonResult,'%2d     %8.4f     %8.4f      %8.4f      %8.4f      %8.4f \n'...
    , iter, old_xr, new_xr, f(new_xr), ea, ef);

    old_xr=new_xr;
    
    if iter>maxITER
        fprintf('No result')
    end
end

fprintf(newtonResult,' The root is %8.4f \n', new_xr);
fprintf('Calculation complete! \n')
fprintf(" Root: %8.4f\n ", new_xr)