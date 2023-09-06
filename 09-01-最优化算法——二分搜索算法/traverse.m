%±éÀú
clear;close all;clc;
x=0.01:0.01:10;
y=f(x);
plot(x,y,'r',x,2*ones(size(x)),'b:')
xlabel('x');
ylabel('y')
title('y=lnx+x')