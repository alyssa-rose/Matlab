%{
Rewrites same function in multiple ways using Symbolic
Math toolbox

Alyssa Rose    HW5   2-28-18
%}

syms x
f = (1 - x)^6;
g = expand(f);
h = horner(f);
%prints to screen
pretty(f)
pretty(g)
pretty(h)

%converts symbolic to anonymous functions
ff =@(x) (1 - x).^6;
gg = matlabFunction(g);
hh = matlabFunction(h);
x = linspace(0.995, 1.005, 301);
ff = ff(x);
gg = gg(x);
hh = hh(x);
%compares f(x) and g(x) graphs and finds error
figure
subplot(2,1,1)
plot(x,ff,'m-',x,gg,'c-')
xlabel('301 pts from 0.995 to 1.005')
ylabel('f(x) and g(x)')
title(sprintf('RMS error: %.3e',RmsError(ff,gg)))
legend('f(x)','g(x)')
%compares f(x) and h(x) graphs and finds error
subplot(2,1,2)
plot(x,ff,'m-',x,hh,'b-')
xlabel('301 pts from 0.995 to 1.005')
ylabel('f(x) and h(x)')
title(sprintf('RMS error: %.3e',RmsError(ff,hh)))
legend('f(x)','h(x)')