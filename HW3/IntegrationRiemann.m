function result = IntegrationRiemann(f,delX)
%{
Computes riemann sum of a function

Alyssa Rose    2-12-18
HW3
%}
for l = 1:length(f)
    riemann = (delX*f);
    result = sum(riemann);
end

 