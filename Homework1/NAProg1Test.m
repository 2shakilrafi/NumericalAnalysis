% This is a script file to test the macheps and quadroot routines.
%
% Save this file with your other matlab files (like startup.m, macheps.m and
% quadroot.m).  Then in the command window type (without the >>)
% >> NAProg1Test
%
% It erases any file (in the Matlab path) called prog1run, and
% writes output to a file in the Matlab working directory called prog1run.
%
% When your code is working to your satisfaction, print out and email me
% macheps.m, quadroot.m and prog1run

diary off
if exist('prog1run','file'),
    delete('prog1run')
	disp(' ')
	disp('deleting old prog1run file to make new one')
end

disp(' ')
diary prog1run

format long e
myeps = macheps
disp(' ')
[r1,r2,erfl]=quadroot(1,1,-2);
disp('x^2 + x - 2:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(-1,-1,2);
disp('-x^2 - x + 2:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(1e155,1e155,-2e155);
disp('1e155x^2 + 1e155x - 2e155:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(1e-155,1e-155,-2e-155);
disp('1e-155x^2 + 1e-155x - 2e-155:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(1,-4,5);
disp('x^2 - 4x + 5:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(1e-42,-2,2);
disp('1e-42x^2 - 2x + 2:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(0,-2,2);
disp('0x^2 - 2x + 2:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(0,0,2);
disp('0x^2 + 0x + 2:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(3e-7,3,-5e-13);
disp('3e-7x^2 + 3x - 5e-13:'),roots=[r1,r2],erfl,disp(' ')
[r1,r2,erfl]=quadroot(-3e-7,-3,5e-13);
disp('-3e-7x^2 - 3x + 5e-13:'),roots=[r1,r2],erfl,disp(' ')

diary off
