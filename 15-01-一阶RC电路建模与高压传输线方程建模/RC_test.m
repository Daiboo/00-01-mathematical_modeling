clear;close all;clc;
u=5;R=1;C=1;tend=10;
figure(1)
[t,uc]=RC(R,C,tend,u);
plot(t,uc,'k')
xlabel('t/s')
ylabel('u_C/v')
figure(2)
[t,uc]=CR(C,R,u,tend);
plot(t,uc,'k')
xlabel('t/s')
ylabel('u_C/v')
