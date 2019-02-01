function nFactorial = MyFactorial(n)
%{
returns the factorial of a number

Alyssa Rose     2-8-18
HW3
%}
if n < 0
    nFactorial = NaN;
    
%sets nFactorial equal to 1 when n=0
elseif n == 0
    nFactorial = 1;
else
    k=n;
    while n > 1
        n = n-1;
        k = k.*n;
    end
    nFactorial = k;
end
    
    
    

