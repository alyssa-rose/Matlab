N = input('Enter a value of N: ');
% M = 100 in this experiment
% Represented by the rows of matrix
matrix = zeros(100, N);
error = zeros(100,1);
for k = 1:100
    array = randi(140, [1, N]);
    matrix(k,:) = array;
    err = length(find(array >= 100))/140;
    error(k) = abs((41/140) - err);
    
end