%{
x = rand(35);
y = length(x>0)/length(x)
%}
strIn = 'The rain in Spain falls mainly on the PLAIN';
numMatches = 0;
%{
for m = 1 : length(strIn)-2
    if strcmpi(strIn(m:m+2),'ain')
        numMatches = numMatches + 1;
    end
end
numMatches
%}
roommateGenerosityScore = 4.3;
isMean = roommateGenerosityScore < 1.5
x = [1.2, 4.5, 2, -1, -59, 33.2];
avgX = mean(x)

nStudents = 5; score = 75.3;

[num2str(nStudents) ' students got > %0.1f on exam 1',score]

[num2str(nStudents) 'students got > ' num2str(score) ' on exam 1']


