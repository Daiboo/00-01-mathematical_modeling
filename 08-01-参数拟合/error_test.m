clear;close all;clc;
data=load('附件.txt');%导入数据
x=data(:,1);y=data(:,2);
a=-2:0.001:3;
a=a';
n=length(a);
e=zeros(size(a));
for i=1:n
    e(i)=error_fun(a(i),x,y);
end
%计算误差
figure
plot(a,e,'k')
xlabel('a')
ylabel('e(a)')%画出误差函数图

