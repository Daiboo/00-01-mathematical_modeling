clear;close all;clc;
B=[0,4 2];
m=[1,1.5 5];
k=[1 2 4];
tend=[30,20,40];
for i=1:3
    [t,y,v]=vib_ode(m(i),B(i),k(i),tend(i));
    figure(i)
    plot(t,y,'r')
    xlabel('t/s')
    ylabel('y/m')
    title(['m=',num2str(m(i)),',B=',num2str(B(i)),',k=',num2str(k(i))])
    figure(i+3)
    plot(t,v,'k')
    xlabel('t/s')
    ylabel('v/m/s')
    title(['m=',num2str(m(i)),',B=',num2str(B(i)),',k=',num2str(k(i))])
end