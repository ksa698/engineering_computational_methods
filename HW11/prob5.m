%% Prob 5 b)
%integral for n=1,2,4,8,16,32
%plot integral vs n
%conclude from plot (KOWALSKI ANALYSIS)

%% CODE
clc; clear all;
func=@(x) 8+4*cos(x);
a=0;
b=pi/2;


[I1]=trapIntegral(func,a,b,1)
[I2]=trapIntegral(func,a,b,2)
[I4]=trapIntegral(func,a,b,4)
[I8]=trapIntegral(func,a,b,8)
[I16]=trapIntegral(func,a,b,16)
[I32]=trapIntegral(func,a,b,32)

%Plotting
seg=[1 2 4 8 16 32]; %# of segments
iI=[I1 I2 I4 I8 I16 I32];
    scatter(seg,iI)  %see individual plots
    hold on
    plot(seg,iI)
    title('<ERROR>')
    
%% KOWALSKI ANALYSIS
%The graph demonstrates the error for the given number of segments or
%quadrature points. Because the graph flat lines it suggests that after a
%certain number of points the solution converges (aka accurate and close to
%real solution). Meaning you can add more points but your solution is
%pretty acurate as it is.
