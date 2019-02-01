% INSTRUCTIONS: 
% 1) save this file into the directory that holds your work
% 2) make sure it runs without error
% 3) publish this file to PDF.  There are two ways to do this:
%    a) You can either use the 'Publish' tab, being sure to edit the
%    publishing options so the output format is 'pdf', or 
%    b) run the commands below in the command window, one at a 
%    time: (without the comment symbol!)
%    options.format = 'pdf';
%    publish('runAllHW4',options);
%
% 4) There should then be a PDF file in the subdirectory 'html'
%    that you can upload to TurnItIn. 
%    PLEASE DOUBLE-CHECK it has everything you need!!

% prepare to run...
clear all  % clear out all variables
close all  % close any open figures

%% list ECG project files
dbtype('MainScript')
fprintf('\n --------------------------- \n')
dbtype('SetupTimeVector')
fprintf('\n --------------------------- \n')
dbtype('FindEcgPeaks')
fprintf('\n --------------------------- \n')
dbtype('CalcInstHR')
fprintf('\n --------------------------- \n')
dbtype('CalcStats')

%% list and the vectorization problem
fprintf('\n\n --------------------------- \n\n')
type('HotTubVectors')

%% run ecg project
fprintf('\n\n --------------------------- \n\n')
MainScript