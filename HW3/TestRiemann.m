%Q 1
dT = .001;
T = linspace(0, 0.5,499);
y = SampledSine( 1, 1, dT,499);
plot(T,y);
xlabel('Sample number')
ylabel('y')

%Q 2
z = IntegrationRiemann(y,0.001);
fprintf('Riemann 1: %.8f\n',z)

%Q 3
fprintf('Calculus:  %.8f\n', 1/pi)

%Q 4
dT = .00001;
T = zeros(1,49999);
T = linspace(0, 0.005,49999);
y = SampledSine( 1, 1,dT,49999);
m = IntegrationRiemann(y ,0.00001);
fprintf('Riemann 2: %.8f\n',m)
%{
adjusted dT from 0.001 to 0.00001 to receive an
appromiation closer to the value of the integral (1/pi)
%}

%Q 5
%{
In order to calculate the right riemann sum, the indexing
for f would be shifted up by one in order to attain the 'height'
of the rectangle taken from the right side, which is the value
f(k+1) if the left riemman was f(k)
%}

