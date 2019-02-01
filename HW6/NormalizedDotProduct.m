function dp = NormalizedDotProduct(v1,v2)
%{
takes in 2 vectors and finds their dot products

Alyssa Rose  HW6  3-14-2018
%}
%checks if vectors are same length
if length(v1)~=length(v2)
    dp = NaN;
    return
end
%find size of the vector
[rv1,cv1] = size(v1);
[rv2,cv2] = size(v2);
%converts vector to column vector
if cv1~=1
    v1 = v1';
end

if cv2~=1
    v2 = v2';
end
%finds unit vector and computes dot product
unitV1 = v1./(sqrt(sum(v1.^2)));
unitV2 = v2./(sqrt(sum(v2.^2)));
dp = sum(unitV1.*unitV2);
