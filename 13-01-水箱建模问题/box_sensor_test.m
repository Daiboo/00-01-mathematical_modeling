clear;close all;clc;
dt=0.01;T_day_start=0;T_day_end=24;
t=T_day_start:dt:T_day_end;
t=t';
n=length(t);
h=zeros(size(t));
k2=h;
h(1)=15; 
for i=1:n
    k2(i)=K2(t(i));
end
k1=0;
for i=1:n-1
    [h(i+1),k1]=box_ode_sensor(k2(i),h(i),dt,k1,i);
end
figure
plot(t,h,'k')
xlabel('t/h')
ylabel('h/m')
figure
plot(t,k2,'r')
xlabel('t/h')
ylabel(' «∑Ò”√ÀÆ')
axis([0,24,0,2])
