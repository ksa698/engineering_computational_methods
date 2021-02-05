%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% developed by: Babak Poursartip
% The University of Texas at Austin
%
% compute cos(x) using the Taylor expansion
% PUBLISH THIS CODE (NOT PRINT RESULT OR COMPUTE ERROR FUNCTIONS)
%THEN RUN IT AND PICK A VALUE AND SEE RESULT TEXT SEPERATELY AND PDF 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Problem 8
clc; clear all; close all;

% initialization
MAXITERATION = 100;  % setting the maximum iteration
TOL = 1;             % setting the tolerance
approxSol = 0.0;     % CHANGE to 1 since cos taylor series begins at 1-...
approxSol_pre = 0.0; % holds the numerical soln at the previous iteration
iteration = 0;       % holds the iteration number
relativeErrorPercent = 100.0; % relative error percent
relativeApproxErrorPercent = 100.0; % relative error approximate percent

x = input(' enter x in radian- 0~2pi: '); % holds the point that you want to 
                                          % computate sin(x)
while x> 2*pi
    x =x-2*pi;
end

exactSol = cos(x);                   % holds the exact solution
condition = true;                    % a Temp variable to manage the loop


% open the result file
resultsFile = fopen('results.txt','w');
fprintf(resultsFile,'iteration  | exact sol  | approx sol  | rel error  | rel approx error \n');
fprintf(resultsFile,'----------------------------------------------------------------------\n');

% computation
while condition
    
    approxSol_pre = approxSol; % setting approx. soln in the previous step
    approxSol = approxSol + ...
                ((-1.0)^(iteration))* (x^(2*iteration))/factorial(2*iteration); %CHANGE INTO COS TAYLOR SERIES 
    
   fprintf('%5d  %10.5f   %10.5f   %10.5f \n', iteration, approxSol, (-1.0)^(iteration), (x^(2*iteration))/factorial(2*iteration))
     
             
    % compute the errors
    [relativeErrorPercent, relativeApproxErrorPercent] = ...
                          computeError(approxSol, approxSol_pre, exactSol);

    % print the output in the output file
    printResults(resultsFile, iteration, exactSol, approxSol, ...
                         relativeErrorPercent, relativeApproxErrorPercent);

    if relativeApproxErrorPercent < TOL || iteration > MAXITERATION
        condition = false;
    end
    iteration = iteration + 1;
end

fprintf('-- End of calculation -- \n')
