
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% developed by: Babak Poursartip
% The University of Texas at Austin
%
% compute sin(x) using the Taylor expansion
%   - this function prints the results in each iteration
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function printResults(resultsFile, iteration, exactSol, approxSol, ...
                                                relativeE, relativeApproxE)
fprintf(resultsFile,' %2d        | %10.5f | %10.5f  | %10.5f | %10.5f \n', ...
              iteration, exactSol, approxSol, relativeE, relativeApproxE);
