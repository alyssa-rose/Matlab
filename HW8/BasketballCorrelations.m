load basketballData.mat
%{
finds correlations from data in basketballData

Alyssa Rose HW8  03-28-18
%}
figure(2)
%creates scatter plot height vs. weight
subplot(2,3,1)
scatter(HeightFeet, WeightLbs);
MyLinefit(HeightFeet, WeightLbs,1);
xlabel('height')
ylabel('weight')
%there is a strong correlation with height vs. weight, since the R value
%is close to 1. There is 1 outlier (tall but low weight)

%creates scatter plot height vs. field goal %
subplot(2,3,2)
scatter(HeightFeet, FieldGoalPercentage);
MyLinefit(HeightFeet, FieldGoalPercentage,1);
xlabel('height')
ylabel('field goal percentages')
%not a strong correlation; many pts deviate from the line although the R
%value is closer to 1 than other graphs

%creates scatter plot height vs. free throw %
subplot(2,3,3)
scatter(HeightFeet, FreeThrowPercentage);
MyLinefit(HeightFeet, FreeThrowPercentage,1);
xlabel('height')
ylabel('free throw percentages')
%moderate correlation; the R value deviated more than expected and their
%is an outlier (very low %)

%creates scatter plot weight vs. field goal %
subplot(2,3,4)
scatter(WeightLbs,FieldGoalPercentage,'g');
MyLinefit(WeightLbs,FieldGoalPercentage,1);
xlabel('weight')
ylabel('field goal percentages')
%appears to not be a strong correlation, R value predicts it to be true
%about 25% of the time, considerable amount of outliers, especially
%the low weight but mid field goal % . This seems to be more about random
%correlation than actual causation, considering the low R value (but R 
%values for weight vs field% and height vs. field% are extremely similar.


%creates scatter plot free throw vs. avg pts
subplot(2,3,5)
scatter(FreeThrowPercentage, AveragePointsPerGame,'g');
MyLinefit(FreeThrowPercentage, AveragePointsPerGame,1);
xlabel('free throw percentages')
ylabel('average points per games')
%weakest correlation of all the graphs (lowest R value). Free throw % is
%not a strong predictor for avg pts in game

%creates scatter plot field goal vs. avg pts
subplot(2,3,6)
scatter(FieldGoalPercentage, AveragePointsPerGame,'g');
MyLinefit(FieldGoalPercentage, AveragePointsPerGame,1);
xlabel('field goal percentages')
ylabel('average points per games')
%many outliers and very weak correlation, although field goal % and avg pts
%correlation is stronger than avg pts and free throw % (field goal more
%important)
