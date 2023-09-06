clear;close all;clc;
a=-2:0.01:4;
a=a';
b=zeros(size(a));
n=length(a);
for i=1:n
    b(i)=ode(a(i));
end
plot(a,b,'k')
xlabel('a')
ylabel('b')