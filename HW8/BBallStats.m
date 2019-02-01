load basketballData.mat
%{ 
graphs data using histograms and qqplots

Alyssa Rose HW8  03-28-18
%}
figure(1)
subplot(2,2,1)
bar(MyHistogram(FieldGoalPercentage, 20))
title('Field goal percentages')


subplot(2,2,2)
qqplot(MyHistogram(FieldGoalPercentage, 20))
title('Field goal percentages')

subplot(2,2,3)
bar(MyHistogram(AveragePointsPerGame, 20))
title('Average pts per game')
xlabel('bins')
ylabel('points') 

subplot(2,2,4)
qqplot(MyHistogram(AveragePointsPerGame,20))
title('Average pts per game')
%{
the two right graphs appear to follow gaussian since
their lines are mostly linear. The 2 left histogram graphs 
do not appear to look graphically gaussian.
%}
figure(2)
heightVec = (HeightFeet >= 6.5)';
boxplot(AveragePointsPerGame, heightVec)
xlabel('Height: 1=>6.5, 0<6.5 ft')
ylabel('Avg pts per game')
title('Points per game vs height')
%{
Height does not seem to correlate with avg pts per game. 
The taller players appear to have more range in pts scored
but the shorter players have higher median pts.
%}
