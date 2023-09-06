clear;close all;clc;
dt=0.1;%时间步长
t=0:dt:1;%时间序列
t=t';
n=length(t);
y1=zeros(size(t));
y1(1)=1/3;%初值
y2=y1;
for i=1:n-1
    k=f(t(i),y1(i));
    y1(i+1)=y1(i)+dt*k;%欧拉法
    
    k1=f(t(i),y2(i));
    k2=f(t(i)+dt/2,y2(i)+dt/2*k1);
    k3=f(t(i)+dt/2,y2(i)+dt/2*k2);
    k4=f(t(i)+dt,y2(i)+dt*k3);
    K=(k1+2*k2+2*k3+k4)/6;
    y2(i+1)=y2(i)+dt*K;%龙格库塔法
end
y3=1/3*exp(t);
figure(1)
plot(t,y1,'r',t,y3,'k')
legend('欧拉法','解析解')
xlabel('t')
ylabel('y(t)')
figure(2)
plot(t,y2,'r',t,y3,'k')
legend('龙格库塔法','解析解')
xlabel('t')
ylabel('y(t)')