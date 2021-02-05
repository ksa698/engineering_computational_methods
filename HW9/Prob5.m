%% Problem 5 b)
%linear regression coeff solver
%compute Goodness of Fit
%interpret quality of result w/ histogram & GOF

%% CODE 
%y1_meas section
clc; clear all;
input_measurements=fopen('y1_meas.txt','r');
A=fscanf(input_measurements,'%f %f \n',[2 Inf]);
x1=(A(1,:))';
n=length(x1);
    y1_meas=(A(2,:))';
    [a0,a1]=linReg(x1,y1_meas)

%y2_meas section
input_measurements=fopen('y2_meas.txt','r');
A=fscanf(input_measurements,'%f %f \n',[2 Inf]);
x2=(A(1,:))';
n=length(x2);
    y2_meas=(A(2,:))';
    [a0,a1]=linReg(x2,y2_meas)
    
%y3_meas section    
input_measurements=fopen('y3_meas.txt','r');
A=fscanf(input_measurements,'%f %f \n',[2 Inf]);
x3=(A(1,:))';
n=length(x3);
    y3_meas=(A(2,:))';
    [a0,a1]=linReg(x3,y3_meas)
    
%% FIGURES
figure;
    subplot(1,3,1)
        hist(y1_meas-(a0+a1*x1))
        title('Y1')
    subplot(1,3,2)
        hist(y2_meas-(a0+a1*x2))
        title('Y2')
    subplot(1,3,3)
        hist(y3_meas-(a0+a1*x3))
        title('Y3')
%% KOWALSKI ANALYSIS!!!
%Data set for the first two have high correlation coefficients (close to 1)
%meaning that they are possibly linear. The third set is close to 0.5
%and shown from the histogram it is not likely a linear model.