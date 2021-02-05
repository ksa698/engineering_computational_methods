%% Problem 7 
%   Q: Develop code for Secant

%% OUTPUT FILE
 secantResult = fopen('secant.txt','w');
 fprintf(secantResult,' iter   old_xr       new_xr          xr          f(xr)           ea             ef \n');
 
%% CODE
f = @(x) (x*cos(pi*x))-(2*x^2)+1;
    maxITER=50;
    tol=0.0005;    %tolerance
    iter=0;
    ea=100;        %relative error
    old_xr=input('Enter first guess: ');    %need 2 guesses
    new_xr=input('Enter second guess: ');
    xr=0;                                   %stores the root

while ea>tol && iter<=maxITER
    iter=iter+1;
    xr=new_xr-(f(new_xr)*(old_xr-new_xr))/(f(old_xr)-f(new_xr)); %secant formula
    ea=abs((xr-old_xr)/xr)*100;         
    ef=abs(f(xr));
    
    
    fprintf(secantResult,'%2d    %8.4f     %8.4f      %8.4f      %8.4f      %8.4f      %8.4f\n'...
    , iter, old_xr, new_xr, xr, f(xr), ea, ef);
    
    old_xr=new_xr;
    new_xr=xr;
    
    if iter>maxITER
        fprintf('No result')
    end
end

fprintf(secantResult,' The root is %8.4f \n', new_xr);
fprintf('Calculation complete! \n')
fprintf(" Root:%8.4f \n ", new_xr)