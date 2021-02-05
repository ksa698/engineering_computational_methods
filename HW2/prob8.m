%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% developed by: Babak Poursartip
% The University of Texas at Austin
%
% compute sin(x) using the Taylor expansion
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; clear all; close all;

% initialization
MAXITERATION = 100;  % setting the maximum iteration
TOL = 1;             % setting the tolerance
approxSol = 0.0;     % holds the numerical soln at the current iteration
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
    iteration = iteration + 1; %increase from 0...
    approxSol_pre = approxSol; % setting approx. soln in the previous step
    approxSol = approxSol + ...
                 ((-1.0)^(iteration+1) )* (x^(2*iteration-1))/factorial(2*iteration-1);
    
   fprintf('%5d  %10.5f   %10.5f   %10.5f \n', iteration, approxSol, (-1.0)^(iteration+1), (x^(2*iteration-1))/factorial(2*iteration-1))
     
             
    % compute the errors
    [relativeErrorPercent, relativeApproxErrorPercent] = computeError(approxSol, approxSol_pre);
                  relativeErrorPercent = abs((exactSol - approxSol)/exactSol*100);
                  relativeApproxErrorPercent = abs((approxSol_pre - approxSol)/approxSol*100); 
    % print the output in the output file
function printResults(resultsFile, iteration, exactSol, approxSol, ...
                                                relativeErrorPercent, relativeApproxErrorPercent)
              fprintf(resultsFile,' %2d        | %10.5f | %10.5f  | %10.5f | %10.5f \n', ...
              iteration, exactSol, approxSol, relativeErrorPercent, relativeApproxErrorPercent);

    if relativeApproxErrorPercent < TOL || iteration > MAXITERATION
        condition = false;
    end
end

fprintf('-- End of calculation -- \n')