
%funciton [relativeErrorPercent, relativeApproxErrorPercent]=computeError(approxSol, approxSol_pre, exactSol)
function [relativeErrorPercent, relativeApproxErrorPercent]=computeError(approxSol, approxSol_pre, exactSol)
% This funciton computes the relative errors
% input args: 
%             approxSol:     Approximate solution at the current step
%             approxSol_pre: Approximate solution at the previous step
%             exactSol:      Exact solution
% output:
% 
relativeErrorPercent = abs((exactSol - approxSol)/exactSol*100);
relativeApproxErrorPercent = abs((approxSol_pre - approxSol)/approxSol*100);


