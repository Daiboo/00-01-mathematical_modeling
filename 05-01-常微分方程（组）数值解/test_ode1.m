clear;close all;clc;
dt=[0.1 0.01 0.001];%3种时间步长
ts=0;te=1;%初始时刻和结束时刻
for i=1:3
    [y,t]=ode1(ts,te,dt(i));
    plot(t,y)
    hold on
end%循环画图
y2=1/3*exp(t);
plot(t,y2);%解析解
xlabel('t')
ylabel('y(t)')
legend('dt=0.1','dt=0.01','dt=0.001','解析解')
