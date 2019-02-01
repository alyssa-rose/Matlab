%problem 1: vect = [31+1:2:75]
%{
PROBLEM 2
x=[2 5 1 6];
a.)x = x+16
b.)x = (x(1:2:end))+3
c.)x=sqrt(x)
d.)x = x.^2
%}

%{
PROBLEM 3
x=[3 2 6 8]';
y=[4 1 3 5]';
a.)y = y+sum(x)
b.)x = x.^y
c.)y = y./x
d.)z=x.*y
e.)w = sum(z)
f.)w = x'*y -w
%}
%{
x = randperm(35)
y =zeros(1,length(x));
exp1 = x < 6;
exp2 = (6 <= x)& (x< 20);
exp3 = (20 <= x)& (x <= 35);
y(exp1) = 2;
y(exp2) = x(exp2)-4;
y(exp3) = 36-x(exp3);
plot(x,y)
%}
x = -1
if 0 < x < 10          
        y = 4*x              
     elseif 10 < x < 40      
        y = 10*x             
     else
        y = 500
     end



%{
PROBLEM 4
a.) 2/2*3
b.) 6-2/5+7^2-1
c.) 10/2/5-3+2*4
d.) 3^2/4
e.) 2+round(6/9+3*2)/2-3
f.) 2+floor(6/9+3*2)/2-3
g.) 2+ceil(6/9+3*2)/2-3
%}

%{
PROBLEM 5
a.) x = 2:2:8;
b.) x = 10:-2:-4;
c.) x = (1:5).^-1;
d.) x = (0:4).*((1:5).^-1)
%}

%{
PROBLEM 6
k=1:100;
x(k)=((-1).^(k+1))./(2*k-1);
sum(x)
%}

%{
x = [3 15 9 12 -1 0 -12 9 6 1]
k = (x<0);
x(k) = false
%}


