function [alpha,beta]=ViralLoad
%{
fits linear to exponential curve and extrapolates; returns
slope and y intercept of line

Alyssa Rose  HW9  04-05-2018
%}

%% create vec, plot, find prediction
%creates data
treatment = 0:2:10;
viralLoad = [33550, 12170, 975, 150, 88, 55];

%"linear" plot
figure(4)
subplot(2,1,1)
hold on
[yFit, coeff] = MyPolyfit(treatment, log(viralLoad),1,0);

%finds alpha/beta and prediction and plots
beta = coeff(1,1);
alpha = exp(coeff(2,1));
treatPredic = 0:2:20;
linePredic = alpha*exp(beta.*treatPredic);
%plots prediction and data pts
plot(treatPredic, linePredic,'b');
plot(treatment, viralLoad,'ro');
title('linear prediction and data points')
ylabel('viralLoad')
xlabel('treatment')
hold off

%semilogy plot
subplot(2,1,2)
hold on
plot(treatPredic, log(linePredic), 'b')
plot(treatment, log(viralLoad),'ro')
title('semilogy prediction and data points')
xlabel('treatment')
ylabel('ln(viralLoad)')
hold off
%{
only semilogy can be used since treatment data contains a 0
in its vector, and ln(0) does not exist; this problem doesn't 
occur in ViscosityCurve since log10(0) isn't a data point
%}

