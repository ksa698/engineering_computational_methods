%% Problem 5 c) NR eqn
%solve multi-dim root finding

%% CODE
function x=multNR(F,x,iter)
tol=10^-5;
error=1;
iteration=0;

    while error >= tol && iteration < iter 
    [f,J]=F(x);
    row = length(f);
    col=row;
    low = zeros(row,col);
        for a = 1:col-1
            for c = a+1:row
            factor = J(c,a)/J(a,a);
            low(c,a) = factor;
            J(c,a:col) = J(c,a:col) - factor*J(a,a:col);
            end
        end
        up = J;
        for q = 1:row
            low(q,q) = 1;
        end
    inv = zeros(row,row);
        for k = 1:row
            o=zeros(row,1);
            b=zeros(row,1);
            b(k,1)=1;
            for p=1:row
                o(p) = o(p) + b(p);
                for i=1:p-1
                    o(p)=o(p) - low(p,i)*o(i);
                end
            end
            for j=row:-1:1
                l(j)=o(j)/up(j,j);
                o(1:j-1)=o(1:j-1)-up(1:j-1,j)*l(j);
            end
        inv(:,k) = l;
        end
    xnew = x - inv*f;
    x=xnew;
    error = norm (f);
    iteration= iteration+1;
    end
    f
end 