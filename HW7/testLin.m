%% integers
clear
ydbl = 250 % double
yu8 = uint8(ydbl)
whoops = int8(ydbl)

xu8 = uint8(9)
zu8 = uint8(4)

% now, do some addition
sm1 = zu8 + yu8
sm2 = xu8 + yu8

%% floats
res1 = 0.6 - 0.4 - 0.2
res2 = 0.6 - (0.4 + 0.2)
isEq = (res1 == res2)

% here is what the autograder checks..
isEq2 = abs(res1-res2) < 1e-11

%% more floats
clear
x = 1;
y = 1e-20;
z = (x+y) - x;
isZero = (z==0)