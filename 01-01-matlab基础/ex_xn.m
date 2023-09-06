clear;close all;clc;
a=[-2,-1,0,2,1];
%计算出的极限是-1和2,所以分别在这两个值的两侧取值
n=20;%计算前20项
for i=1:length(a)
    x=xn(a(i),n);
    subplot(2,3,i)
    plot(x,'k*')
    title(['a=',num2str(a(i))])
end