function [x]=matrixMult(y,z)
[a,b]=size(y);
[a1,b1]=size(z);

    if (b ~= a1)
        x=[];
        fprintf('Dimensions do not match, not compatible');
        return
    else
        x=zeros(a,b1);
        for i=1:a;
            for j=1:b1;
                for k=1:b;
                    x(i,j)=x(i,j)+y(i,k)*z(k,j);
                end
            end
        end
    end
end