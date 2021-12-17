% ====================================== 
% PROGRAMMING HOMEWORK 3
% Shakil Rafi
% 10/26/2018
% ======================================
%
% lagrangeval.m function
% 
% === Input variables:
% x -- a vector containing x values over which interpolation is to happen
% y -- a vectrr containing corresponding y values over which interporation
% is to happen
% w -- a vector containing values on which to evaluate the interpolated
% polynomial
% 
% === Output variable:
% p --  a vector with each index corresponding to an index in w, showing
% the evaluated value of the interpolating polynomial at that point in w.
% Note that because we do not know ahead of time what the sizes of x, y,
% and w are going to be, we do not know necessarily how large p is going to
% be and so p is set to be a dynamic vector.
%
% === Variables used:
% j -- indexes w, varies from 1 to however long w is
% k -- indexes each x value as we cycle through them to build our lagrange
% interpolant, varies from 1 to length of x
% ln(k) -- the nth degree lagrange interpolant at point x(k), again because
% we do not know how big x is going to be ln(k) is set to be dynamic
% xtemp -- the vector x with the index x(k) removed

function p = lagrangeval (x,y,w)

if length(x) ~= length(y)
    disp ('Vector x and Vector y have different lengths');
    return;
elseif max(w) > max (x) || min(w) < min(x)
    disp ('The values of w are beyond the scope of interpolation');
    return;
else
    for j = 1:length(w)
        
        for k = 1 : length(x)
            xtemp = x(1:end ~= k);
            if polyval(poly(xtemp),x(k)) ~= 0
                ln(k) = polyval(poly(xtemp),w(j))/(polyval(poly(xtemp),x(k)));
            else
                disp ('Possible repeated points or two points differ by less than machine precision');
                return;
            end
        end
        p(j) = sum(y .* ln);
        %interpolating polynomial found as a dot product of the ln vector
        %and y vector
    end
    %figure(1);
    %plot(x,y);
    %figure(2);
    %plot(w,p);
    %plots used for testing purposes
end
