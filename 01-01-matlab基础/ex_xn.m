clear;close all;clc;
a=[-2,-1,0,2,1];
%������ļ�����-1��2,���Էֱ���������ֵ������ȡֵ
n=20;%����ǰ20��
for i=1:length(a)
    x=xn(a(i),n);
    subplot(2,3,i)
    plot(x,'k*')
    title(['a=',num2str(a(i))])
end