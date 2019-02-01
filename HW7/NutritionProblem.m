function x = NutritionProblem
%{
finds quantity of ingredients to use based on diet restrictions

Alyssa Rose  HW7  03-17-18
%}
matA = ([36,51,13; 52,34,74; 0,7,1]);
b = [33,45,3]';
x = matA\b*100

%{
The units of the solution is in grams 
%}
end