%{
x = rand(1,10);
y = 2:11;
z = [x; y];
z(:,3:4)=[];
[m, n]=size(z)
%}

%{
a = rand(4,3);
b = zeros(4,1);
c = ones(2,4);
d = [a,b;c];
%}
%{
a = [3 1;8 6; 0 4];
b = [5 9; 7 2];
d = [1;6];
c = b*d
%}
%{
a = rand(5)
b = randn(5)
figure,
subplot (2,1,1)
plot(a,'bo')
subplot(2,1,2)
plot(b,'mo')
%}
%{
dogs = struct('name','bruno','age',2,'breed','akita');
dogs(2).name = ' wilson';dogs(2).age = 5;dogs(2).breed=' pug';
dogs(3).name = ' orwell';dogs(3).age = 3;dogs(3).breed=' german pointer';
dogName=[];
names = [dogs.name]
%}
r = randn(1,5)
