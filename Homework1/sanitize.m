% Sanitization function, 
% ===Input:
% a -- according to the convention established in quadroots.m
% b -- according to the convention established in quadroots.m
% c -- according to the convention established in quadroots.m
% and outputs single letter codes for errors. S indicates safe. For more
% details see quadroot.m

function errflag = sanitize(a,b,c)

if a == 0 && b == 0 && c == 0                                               %test for all 0 coefficients                                                      
    errflag = 'Z -- all zeros no unique solution';
elseif isnan(a) + isnan(b) + isnan(c) ~= 0                                  %test for NaN as a coefficient
    errflag = 'N -- NaN as a coefficient';
else if isempty (a) + isempty(b) + isempty(b) ~= 0                          %test for empty as a coefficient
        errflag = 'E -- Empty string as a coefficient';
elseif isreal(a)*isreal(b)*isreal(c) == 0                                   %test complex coefficients
        errflag = 'C -- one or more complex coefficients';
else
        errflag = 'S -- Safe';
end
    
end
