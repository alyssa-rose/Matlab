function y =SampledSine(amp, freq, dT, numSamples)
%{ 
Alyssa Rose      2-3-18

Takes in amplitude, frequency, "step size" of time,
and the number of samples. Negative dT and numSamples
not allowed. A sine wave of the signal is returned. 
%}

%checks for allowed dT/numSamples values
if dT < 0 
    y = [];
elseif numSamples < 0
    y = [];
else
%uses numSamples to find last value in the time vector
finalStep = (numSamples - 1)*dT;
%creates time vector starting from 0 with dT intervals
t = 0:dT:finalStep;
y = amp.*sin(2.*pi.*freq.*t);
end


    
    
