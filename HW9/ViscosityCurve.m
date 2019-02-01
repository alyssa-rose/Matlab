function [alpha,beta]=ViscosityCurve
%{
fits linear to power curve and extrapolates; returns
slope and y intercept of line after transformation.

Alyssa Rose  HW9  04-05-2018
%}
%% creates data vecs
temp = [26.67, 93.33, 148.89, 315.56];
viscosity = [1.35, 0.085, 0.012, 0.012];
temp51 = linspace(10,400,51);

%% plots data pts and prediction
%"linear" plot
figure(3)
subplot(2,1,1)
hold on
[yFit, coeff] = MyPolyfit(log10(temp),log10(viscosity),1,0);
plot(temp,viscosity,'ro');

%finds beta and alpha values; uses it to make prediction
beta = coeff(1,1);
alpha = 10^(coeff(2,1));
predic = alpha*(temp51.^beta);
%plotting prediction 
plot(temp51, predic,'b')
title('linear prediction and data pts')
xlabel('temp')
ylabel('viscosity')
hold off

%% plots log-log and polyfit
%log-log
subplot(2,1,2)
hold on
plot(log10(temp),log10(viscosity),'ro')
plot(log10(temp51),log10(predic),'b');
title('loglog prediction and data pts')
xlabel('log10(temp)')
ylabel('log10(viscosity)')
hold off