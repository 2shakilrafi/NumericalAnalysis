%==============NUMERICAL ANALYSIS W/ DR. ARNOLD===========
%==============HOMEWORK 2=================================
%==============Submitted by Shakil Rafi===================

% Function to find machine epsilon
% ===No input.
% ===Output:
% eps -- is four times the smallest value needed so that my
%        current machine cannot distinguish between 1 + eps
%        and 1 - eps



function eps = macheps
eps = 1;
while 1+ eps >= 1 - eps
    if 1+eps <= 1 - eps
        eps = eps + eps + eps + eps;
        break;
    else
        eps = eps/2;
    end
end

end
