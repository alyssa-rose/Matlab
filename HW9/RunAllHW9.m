% INSTRUCTIONS: 
% 1) save this file into the directory that holds your work
% 2) make sure it runs without error
% 3) publish this file to PDF.  There are two ways to do this:
%    a) You can either use the 'Publish' tab, being sure to edit the
%    publishing options so the output format is 'pdf', or
%    b) run the commands below in the command window, one at a 
%    time: (without the comment symbol!)
%    options.format = 'pdf';
%    publish('runAllHW9',options);
%
% 4) There should then be a PDF file in the subdirectory 'html'
%    that you can upload to TurnItIn. Make sure it has everything you need

% prepare to run...
clear all  % clear out all variables
close all  % close any open figures

%% Problem 1
type('MyPolyfit.m')

%% Problem 2
type('TestPolyFit.m')   

fprintf('\n--------------------------------------------\n')

TestPolyFit;

%% Problem 3
type('Co2Fits.m')
fprintf('\n--------------------------------------------\n')
Co2Fits

%% Problem 4
type('ViscosityCurve');
fprintf('\n--------------------------------------------\n')
ViscosityCurve

%% Problem 5
type('ViralLoad.m');
fprintf('\n--------------------------------------------\n')
ViralLoad

%% Extra credit - problem 6
try
    type('MyPolyPlusSinefit.m')
    % file run is at end of co2fit.m
catch
    disp('either no problem 6 file, or error running prob 6 code')
end