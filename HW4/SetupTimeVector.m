function tvec = SetupTimeVector(npoints,Fs)
%{
returns a vector 'tvec' of times in seconds,
of length npoints, starting at t=0 and
spaced apart by 1/Fs seconds

Alyssa Rose  HW4  2-19-18
%}

%checks if values for npoints & Fs are allowed
if npoints <= 0 | Fs <= 0
    tvec = [];
    return
%preallocates tvec
%creates tvec by adding on a "step size" each loop
else
    tvec = zeros(1,npoints);
    step = (1/Fs);
    for k = 2:npoints
        tvec(k) = step+tvec(k-1);
    end
end

return