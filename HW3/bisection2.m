%% Problem 2 
%   Q: Develop code for bisection method

%% OUTPUT FILE
 bisectionResult = fopen('bisection.txt','w');
 fprintf(bisectionResult,' iter   l       u      new_xr    f(l)     f(u)   f(new_xr)   ea         ef \n');
%% CODE
f = @(x) (x*cos(pi*x))-(2*x^2)+1;       %define the function
    maxITER=50;
    tol=0.001;    %tolerance
    iter=0;
    ea=100;        %relative error
    
    l=input('enter lower bound:');  %establishes the interval
    u=input('enter upper bound:');
    
% CHECKING INTERVAL    
    if f(l)*f(u)>0 
        fprintf('Bound without roots, choose another bound \n')
        l=input('lower:');      %accept input from user
        u=input('upper:');
    end
    
% INITIALIZE ROOTS
new_xr=u; 
old_xr=0;
    while ea>tol && iter<maxITER
        iter=iter+1;
        old_xr=new_xr;
        new_xr=(l+u)/2;                 %actual bisection formula
        ea=abs((new_xr-old_xr)/new_xr)*100; 
        ef=abs(f(new_xr));
        
        fprintf(bisectionResult,'%2d %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %12.8f  \n'...
    , iter,l,u,new_xr,f(l),f(u),f(new_xr),ea,ef);

        if f(new_xr)*f(u)<0             %changing bounds
            l=new_xr;
        else if f(l)*f(new_xr)<0
                u=new_xr;
            else
                fprintf(" The exact root is: %10.3f \n ", new_xr);
                break;
            end
        end
        
        if iter>maxITER
            fprintf('No results \n')
        end
    end
    
fprintf(bisectionResult,'\n');
fprintf(bisectionResult,' The root is %8.4f \n', new_xr);
fprintf('Calculation complete! \n')
fprintf(" Root: %8.4f \n ", new_xr)

    
    