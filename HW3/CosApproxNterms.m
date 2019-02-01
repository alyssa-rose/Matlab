function cosx = CosApproxNterms(x,nTerms)
%{
Computes the cosine of a number in degrees using the taylor series of the
cosine function, and estimates it to nTerms # of terms

Alyssa Rose    2-12-18
HW3
%}

y=1;

for m =1:nTerms-1
    final =((-1)^m)*(x^(2*m))/MyFactorial(2*m);
    y = y + final;
end

cosx = y







