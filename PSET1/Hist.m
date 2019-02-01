function [set, spmf] = Hist(array)
a = length(array);
array = sort(array);

ord = [array(1)];
for k = 1:a
    count = 0;
    len = length(ord);
    for m = 1:len
        if(ord(m) == array(k))
            count = count +1;
        end
    end
    if(count == 0)
        ord = [ord, array(k)]
    end
end
set = ord;
lenRep = length(set);
spmf = zeros(1,lenRep)
for k = 1:lenRep
    for n = 1:a
        if(array(n) == set(k))
            spmf(k) = spmf(k)+1;
        end
    end
end
for k = 1:lenRep
    spmf(k) = spmf(k)/a;
end
hist(set, lenRep);