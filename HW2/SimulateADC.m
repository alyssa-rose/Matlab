%{
Alyssa Rose     2-3-18

Creates 4 subplots of sine waves dependent on freq.
using SampledSine function
%}

amplitude = 10;
time = 0:0.1:5;
dT=0.1;
sampl = (5 ./dT) +1;
y1 = SampledSine(amplitude, 0.2, dT, sampl);
y2 = SampledSine(amplitude, 1.0, dT, sampl);
y3 = SampledSine(amplitude, 2.5, dT, sampl);
y4 = SampledSine(amplitude, 4.5, dT, sampl);
%plot 1: freq @ 0.2 Hz
subplot(2,2,1)
plot(time,y1,'black--o')
title('f = 0.2 Hz')
xlabel('Time, sec')
ylabel('Signal')

%plot 2: freq @ 1.0 Hz
subplot(2,2,2)
plot(time,y2,'magenta--o')
title('f = 1.0 Hz')
xlabel('Time, sec')
ylabel('Signal')

%plot 3: freq @ 2.5 Hz
subplot(2,2,3)
plot(time,y3,'cyan--o')
title('f = 2.5 Hz')
xlabel('Time, sec')
ylabel('Signal')

%plot 4: freq @ 4.5 Hz
subplot(2,2,4)
plot(time,y4,'green--o')
title('f = 4.5 Hz')
xlabel('Time, sec')
ylabel('Signal')

%{ 
in each plot, the period of the wave gets smaller. 
In the first graph the period takes 5 sec to complete
which is equivalent to 1/0.2. As the frequency increases
the period of the wave will continue to decrease. Notably
at 2.5 Hz, the waves appear as though they would cancel
each other out (constructive/destructive waves)
%}