%% Problem 4 
%Q: Solve problem 1 numerically, using both bisection and false position methods

%% OUTPUT
result = fopen('results.txt','w');
 fprintf(result,' iter   l       u      new_xr    f(l)     f(u)   f(new_xr)   ea         ef \n');
 
%% BISECTION and FALSE POSITION
f = @(x) (x*cos(pi*x))-(2*x^2)+1;       %define the function
    maxITER=50;
    tol=0.001;    %tolerance
    iter=0;
    ea=1;        %relative error
    l=0.5;       %establishes the interval
    u=1;
    method = 0; % if 0 bisection if 1 false position

% CHECKING INTERVAL    
    if f(l)*f(u)>0 
        fprintf('Bound without roots, choose another bound \n')
    end
    
% INITIALIZE ROOTS
new_xr=u; 
old_xr=0;

    while ea>tol && iter<maxITER
        iter=iter+1;
        old_xr=new_xr;
        
        if method == 0 
        new_xr=(l+u)/2;
        else
        new_xr=u-(f(u)*(l-u))/(f(l)-f(u));    
        end
        
        
        ea=abs((new_xr-old_xr)/new_xr)*100;
        ef=abs(f(new_xr));
        
        fprintf(result,'%2d %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %12.8f  \n'...
    , iter,l,u,new_xr,f(l),f(u),f(new_xr),ea,ef);

        if f(new_xr)*f(u)<0
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
    
fprintf(result,'\n');
fprintf(result,' Bisection Root: %8.4f \n', new_xr);
fprintf("Bisection Root: %8.4f \n", new_xr)

% %% FASLE POSITION
% fprintf(result,'\n');
% fprintf(result,' iter  low       up      new    f(low)    f(up)   f(new)     ea          ef \n');
% maxITER=50;
%     tol=0.001;    %tolerance
%     iter=0;
%     ea=1;        %relative error
%     low=0.5;       %establishes the interval
%     up=1;
% 
% new=up; 
% old=0;
% while ea>tol && iter<maxITER
%         iter=iter+1;
%         old=new;
%         new=up-(f(up)*(low-up))/(f(low)-f(up));
%         ea=abs((new-old)/new)*100;
%         ef=abs(f(new));
%         
%         fprintf(result,'%2d %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %12.8f  \n'...
%     , iter,low,up,new,f(low),f(up),f(new),ea,ef);
% 
%     
%         if f(new)*f(up)<0
%             low=new;
%         else if f(low)*f(new)<0
%                 up=new;
%             else 
%                 fprintf(" The exact root is: %10.3f \n ", new);
%                 break;
%             end
%         end
%         
%         if iter>maxITER
%             fprintf('No results \n')
%         end
% end
% 
% 
% fprintf(result,' False Position Root: %8.4f \n', new);
% fprintf("False Position Root: %8.4f \n ", new)