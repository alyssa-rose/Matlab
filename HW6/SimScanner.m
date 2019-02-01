function scanData = SimScanner(nxr,nxc,dx,sigma)
%{
Takes in nxr/nxc (which are # of elements in rows and columns), 
dx (spacing between points) and sigma(multiplier for the noise term)
and returns the travel time data for an ultrasonic range finder

Alyssa Rose HW 6   3-13-2018
%}

%spedd of sound in air
c= 340;
%preallocation
scanData = zeros(nxr,nxc);
dist= zeros(nxr,nxc);
%creates values for rows and columns
xR = linspace(dx, nxr*dx, nxr);
xC = linspace(dx, nxc*dx, nxc);
%loops over each value to calc distance and travel time
for m = 1:nxr
    for k=1:nxc
        n = sigma*randn(1);
        d(m,k) = 6 + 1.2*xR(m) + 0.8*xC(k);
        scanData(m,k) = 2000*d(m,k)/c + n;
    end
end