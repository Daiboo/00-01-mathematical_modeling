clear;close all;clc;
alpha=0.1;%学习率
x(1)=3;i=1;d=0.01;
dydx=inf;
u=-4:0.01:4;
m=f(u);
figure
plot(u,m,'k')
xlabel('x')
ylabel('y')

while(abs(dydx)>0.0001)
    hold on
    plot(x(i),f(x(i)),'ro')
    dydx=(f(x(i)+d)-f(x(i)))/d;%计算数值导数
    x(i+1)=x(i)-alpha*dydx;%梯度下降
    i=i+1;
      pause(1)
end