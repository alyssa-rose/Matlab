% INSTRUCTIONS: 
% 1) save this file into the directory that holds your work
% 2) make sure it runs without error
% 3) publish this file to PDF.  There are two ways to do this:
%    a) You can either use the 'Publish' tab, being sure to edit the
%    publishing options so the output format is 'pdf', or
%    b) run the commands below in the command window, one at a 
%    time: (without the comment symbol!)
%    options.format = 'pdf';
%    publish('runAllHW3',options);
%
% 4) There should then be a PDF file in the subdirectory 'html'
%    that you can upload to TurnItIn. Make sure it has everything you need

% prepare to run...
clear all  % clear out all variables
close all  % close any open figures

%% Problem 2
type('MyFactorial')
type('CosApproxNterms.m')
type('CosApproxConverge.m')

%% Problem 3
type('DetermineBlizzard')

%% Problem 4
type('LinearInterp')
type('PlotPowerUsage')
fprintf('\n\n---running PlotPowerUsage---\n\n')
PlotPowerUsage

%% Problem 5
type('IntegrationRiemann')
type('TestRiemann')

fprintf('\n\n---running TestRiemann---\n\n')

figure  % adding this to ensure we don't overwrite Problem 4 plot
TestRiemann
