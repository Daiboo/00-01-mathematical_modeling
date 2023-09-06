clear;close all;clc;
m=[15,1];n=[sqrt(2*9.8),2];h0=[2,6];tend=[30,5];
for j=1:2
   figure(j)
for i=1:2
    [t,h]=box_ode(m(j),n(j),h0(i),tend(j));
    plot(t,h)
    hold on
    xlabel('t/s')
    ylabel('h/m')
end
legend('��ʼҺλ2m','��ʼҺλ6m')
title(['m=',num2str(m(j)),',n=',num2str(n(j))])
end