%% Problem 10
h=0:0.01:1; %the change from x knot to x (aka step size)

term1=zeros(1,101);
term2=zeros(1,101);
term3=zeros(1,101);
    
error=zeros(3,101);
    for i=1:101
        %term1(i)=sin(pi/2); exclude zero order
        term1(i)=sin(pi/2)+cos(pi/2)*(h(i));
        term2(i)=sin(pi/2)+cos(pi/2)*(h(i))-sin(pi/2)*(h(i)^2/factorial(2));
        term3(i)=sin(pi/2)+cos(pi/2)*(h(i))-sin(pi/2)*(h(i)^2/factorial(2))-cos(pi/2)*(h(i)^3/factorial(3));
        
        error(1,i)=abs((term1(i)-sin(pi/2+h(i))));
        error(2,i)=abs((term2(i)-sin(pi/2+h(i))));
        error(3,i)=abs((term2(i)-sin(pi/2+h(i))));
    end
%% Graphing    
    loglog(h,error(1,:));
    hold on
    loglog(h,error(2,:));
    loglog(h,error(3,:));
    
title('Absolute Error vs h')
xlabel('h')
ylabel('Absolute error')
legend({'Term 1','Term 2','Term 3'})

%% Commentary
%As h increases for each term the absolute error increases. Term 2 and Term
%3 have the same curve which shows that they have the same absolute error
%per h value or step size. The reason they share the same line is because
%our function is centered at pi/2, so all cos(pi/2) values will equal 0. 