clear;close all;clc;
d=0.01;
x=0:d:6;
y=x.^4-32/3*x.^3+34*x.^2-35*x+5;
plot(x,y,'k')
xlabel('x')
ylabel('y')
[miny,k1]=min(y)%k��y��������Сֵ��Ӧ�����
xmin=x(k1)%x������k��Ԫ�ؾ�����Сֵ��Ӧxֵ
hold on
plot(xmin,miny,'ro')%������Сֵ��