clear;close all;clc;
dt=[0.1 0.01 0.001];%3��ʱ�䲽��
ts=0;te=1;%��ʼʱ�̺ͽ���ʱ��
for i=1:3
    [y,t]=ode1(ts,te,dt(i));
    plot(t,y)
    hold on
end%ѭ����ͼ
y2=1/3*exp(t);
plot(t,y2);%������
xlabel('t')
ylabel('y(t)')
legend('dt=0.1','dt=0.01','dt=0.001','������')
