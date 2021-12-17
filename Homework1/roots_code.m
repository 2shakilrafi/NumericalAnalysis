% Function to classify roots using determinants. 
% ===Inputs are
% norm_a -- normalized a, see quadroots.m and normalize.m
% norm_b -- normalized b, see quadroots.m and normalize.m
% norm_c -- normalized c, see quadroots.m and normalize.m
% normalized values of a,b,c, as discussed in quadroots.m
%
% The function compares determinants (b^2- 4ac) to come to a conclusion and
% gives us the appropriate rootscode.
% 
% ==Outputs:
%
% D -- Distinct roots ==> leads to dist_roots.m
% R -- Repeated roots ==> leads to rep_roots.m
% I -- Imaginary roots ==> leasds to im_roots.m
% L -- Linear ==> leads to linear.m
% Each leads leads off to a different function for such roots, see
% quadroot.m

function roots_code  = roots_code (norm_a,norm_b,norm_c)
if norm_a == 0
    roots_code = 'L';
elseif norm_b*norm_b > 4*norm_a*norm_c
    roots_code = 'D';
elseif norm_b*norm_b == 4*norm_a*norm_c
    roots_code = 'R';
else
    roots_code = 'I';
end

end