clear;close all;clc;
d=0.01;
x=0:d:6;
y=x.^4-32/3*x.^3+34*x.^2-35*x+5;
plot(x,y,'k')
xlabel('x')
ylabel('y')
[miny,k1]=min(y)%k是y向量中最小值对应的序号
xmin=x(k1)%x向量第k个元素就是最小值对应x值
hold on
plot(xmin,miny,'ro')%画出最小值点