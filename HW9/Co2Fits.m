data = csvread('CO2_nohdr.csv');
%{
fits polynomial to CO2 data using centered and uncentered data

Alyssa Rose  HW9  04-05-2018
%}
%% creates unshifted/shifted fits for 3rd and 4th order polynomials
% pull out the data
t = data(:,4); 
smoothedTrend = data(:,8);
rawData = data(:,9);
%computes non shifted fits
[raw3rdOrder,coeff3NC,condNum3NC,rSq3NC]=MyPolyfit(t,rawData,3,0);
[raw4thOrder,coeff2,condNum4NC,rSq4NC]=MyPolyfit(t,rawData,4,0);

%computes shifted fits
tShifted = t - mean(t);
[raw3rdShift,coeff3C,condNum3C,rSq3C]=MyPolyfit(tShifted,rawData,3,0);
[raw4thShift,coeff1,condNum4C,rSq4C]=MyPolyfit(tShifted,rawData,4,0);

%% finds May 1, 2018 prediction
predTime = 2018+(5/12)-mean(t);
predic = (coeff1(1,1)*(predTime)^4) + (coeff1(2,1)*(predTime)^3) + ...
    (coeff1(3,1)*(predTime)^2) + (coeff1(4,1)*predTime) + (coeff1(5,1));
fprintf('prediction for May 1 2018: %.4f\n\n', predic);

%% plots data and smoothed trend line and the numerical derivative
%finds deriv w/ gradient
dt = mean(diff(t));
numericalDeriv = gradient(smoothedTrend)/dt; 

%plots data
figure,
subplot(211)
plot(t,rawData,'.',t,smoothedTrend)
grid on
ylabel('CO_2 PPM')

subplot(212)
plot(t,numericalDeriv,'Linewidth',2)
grid on
xlabel('Time, years')
ylabel('Estimated derivative, PPM/year')

%% creates table of diff fits
coeff3C = [0;coeff3C];
coeff3NC = [0;coeff3NC];
fprintf('power\t\t4th Cen.\t\t4th\t\t3rd Cen.\t\t  3rd\n')
for p = (0:4)
    fprintf('%i\t\t\t\t%0.2f\t\t\t\t %0.2f\t\t   %0.2f\t\t     %0.2f\n',4-p,coeff1(p+1),coeff2(p+1),coeff3C(p+1),coeff3NC(p+1))
end

%% plots of other fits
%plots smooth trend and shifted 4th order
figure(3)
plot(tShifted,raw4thShift,'.',tShifted,smoothedTrend)
grid on
ylabel('CO_2 PPM')
xlabel('tShifted')
title('smoothed trend line')

%plots polynomial fit of order 10
figure(4)
[fit10,coeff,condNum,rSq]=MyPolyfit(tShifted,rawData,10,0);
plot(tShifted,fit10,'b',tShifted,rawData,'r.')
title('polyOrder = 10 fit and data pts')
xlabel('tShifted')
ylabel('CO_2, ppm')

%plots centered/non centered and numerical deriv
figure(5)
cenDeriv = (4*coeff1(1,1).*(tShifted).^3) + (3*coeff1(2,1).*(tShifted).^2) + ...
    (2*coeff1(3,1).*(tShifted)) + (coeff1(4,1));
nonCenDeriv = (4*coeff2(1,1).*(tShifted).^3) + (3*coeff2(2,1).*(tShifted).^2) + ...
    (2*coeff2(3,1).*(tShifted)) + (coeff2(4,1));
plot(tShifted,numericalDeriv,'g',tShifted, nonCenDeriv,'m',tShifted,cenDeriv,'b')
title('Deriv unshifted and shifted')
legend('numericalDeriv','non centered','centered');

%% creates table of cond. number and R^2 values
fprintf('PolyOrder\t Centered?\t R^2\t\t\t Condition#\n');
fprintf('3\t\t\t        No\t\t\t    %.4f\t\t\t%g\n',rSq3NC,condNum3NC)
fprintf('3\t\t\t        Yes\t\t    %.4f\t\t\t%g\n',rSq3C,condNum3C)
fprintf('4\t\t\t        No\t\t\t    %.4f\t\t\t%g\n',rSq4NC,condNum4NC)
fprintf('4\t\t\t        Yes\t\t    %.4f\t\t\t%g\n',rSq4C,condNum4C)

%% plots poly+sine fit [extra credit]
[yFit,coeff,RSq]=MyPolyPlusSinefit(t,rawData,4,1);
ylabel('CO_2, ppm')
xlabel('Time, years')
title(sprintf('RSq = %.6f', RSq)) 
legend('poly+sine fit','data')

%% discussion
%{
Centering the data creates a fit that has a higher R^2 value
and a smaller condition number; this data therefore is more accurate
and most closely fits the data.

Using R^2 and condition number for goodness-of-fit metrics
could be used to show that the 10th order poly fit is not accurate.

The centered and non centered derivatives differ since their differences
are being raised to high orders, which amplifies the differences.
Based on this data, it can be seen that CO_2 values are increasing
faster than a linear model (more cubic of a graph).
%}