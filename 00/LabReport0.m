%% Lab 0 report.
% for this report you will need three files:
% 1.) LabReport0.m (this file)
% 2.) StepResponseMetrics.m  (a file you will edit to show Mp, tr, and tss
% 3.) controllerlab0.mdl (A simulink model)
% All three files must be saved in the save directory.
% You must submit a printout showing Mp, tr, and tss, as found in
% StepResponseMetrics.m
clc
format compact


% variables:
UnitStepVal = 2.0;
%CHANGE total_time TO ZOOM IN ON THE 'INTERESTING' PART OF THE RESPONSE
total_time = 20.0;  %seconds 

% run the controller by using the command 'sim'
sim('controllerlab0')
y1 = y;
tout1 = tout;

%% figure out Mp, tr, ts and make snazzy plots
clc
[C1_Mp, C1_tr, C1_ts] = StepResponseMetrics(y1,tout1, 1, UnitStepVal);

