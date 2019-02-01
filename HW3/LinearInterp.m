function y =LinearInterp(x,xTabulated,yTabulated)

if x>xTabulated(end) || x<xTabulated(1)
    y = -99;
    return
end

for k= 1:length(xTabulated)-1
    pt1 = xTabulated(k);
    pt2 = xTabulated(k + 1);
    if x>=pt1 && x<=pt2
        y = yTabulated(k) + (x-pt1)*((yTabulated(k+1)-yTabulated(k))...
            /(pt2-pt1));
    end
end

