function [mean, variance] = VarMean(array)
a = length(array);
b = 0;
for k = 1:a
    b = b + array(k);
end
mean = b/a;
variance = zeros(a,1);
for k = 1:a
    variance(k) = (array(k) - mean)^2;
end
return
