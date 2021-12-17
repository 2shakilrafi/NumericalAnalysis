% ===============NUMERICAL ANALYSIS W/ DR ARNOLD=============
% ===============HOMEWORK 2==================================
% ===========Submitted by Shakil Rafi========================


% Function fofx(x)
%
% ===Input:
% x -- value at which fofx is to be evaluated
%
% ===Output:
% y -- output value of fofx at x

function y = fofx(x)

y = cos(x) - sin (x);
% I initially wanted to use a power-series to calculate sin and cosine
% (even had a sine.m and cosine.m files ready, but then I realized that the
% makers of matlab probably knew better than I did how to optimize and give
% more accurate values, in any case, why re-invent the wheel?

end