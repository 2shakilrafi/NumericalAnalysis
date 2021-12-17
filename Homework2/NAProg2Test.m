%This is a script file to test the bisect and secant routines.
%
% run it in the command window:
%     >> NAProg2Test
%
%It erases any file (in the Matlab path) called prog2run, and
%writes output to a file in the Matlab working directory called prog2run.

if exist('prog2run','file'),
    delete('prog2run')
	disp(' ')
	disp('deleting old prog2run file to make new one')
end

diary prog2run
format long e

[l,r,nfb] = bisect(@fofx,0.7,0.9,1e-8);
p = l+(r-l)/2;
disp(' ')
disp(' ')
disp('   Bisect output:')
disp('root approx:'),p
disp(' ')
disp('error:'),abs(p-pi/4)
disp(' ')
disp('number of fcn evals:'),nfb
disp(' ')
disp(' ')

[x,nfs] = secant(@fofx,0.65,0.7,1e-9);
disp('   Secant output:')
disp('root approx:'),x
disp(' ')
disp('error:'),abs(x-pi/4)
disp(' ')
disp('number of fcn evals:'),nfs
diary off
