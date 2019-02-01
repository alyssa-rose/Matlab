function [accuracy, speciesAvgDP] = IrisClassifier(isPlotted)
%{
take in boolean (true, false) and outputs dot products
of all species and how close estimation is to actual.

Estimates the species of an iris flower based on 
how similar the flower and average species are (by 
determining how close the dot products are to 1)

Alyssa Rose HW 6    3-13-18
%}
load irisData.mat
%finds how similar species are to each other
speciesAvgDP(1) = NormalizedDotProduct(averageSetosa,averageVersicolor);
speciesAvgDP(2) = NormalizedDotProduct(averageSetosa,averageVirginica);
speciesAvgDP(3) = NormalizedDotProduct(averageVersicolor,averageVirginica);
speciesAvgDP
%{
I think that averageVersicolor and averageVirginica are
most difficult to distinguish since their dot product is
extremely close to 1, meaning that they are nearly identical.
%}
estVec = [];
dotVec= [];
%finds estimate for species of flowers
for m=1:150
    dotVec(1) = NormalizedDotProduct(irisFeatures(:,m), averageSetosa);
    dotVec(2)= NormalizedDotProduct(irisFeatures(:,m), averageVersicolor);
    dotVec(3) = NormalizedDotProduct(irisFeatures(:,m), averageVirginica);
    [M,I] = max(dotVec);
    %creates vector of estimation species
    estVec(m) = [I];
end
%finds accuracy of vector estimation and true species
accuracy = 100*(numel(find(estVec==trueSpecies))/numel(estVec));
fprintf('Percent accuracy: %2.1f', accuracy)
%plots graph if input is 'true'
if isPlotted == true
    figure (4)
    plot(estVec,'sb');
    xlabel('Flower Number')
    ylabel('Estimated Species')
    title('Estimated species vs. Flower number')
end
return