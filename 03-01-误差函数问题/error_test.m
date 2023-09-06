clear;close all;clc;
data=load('附件.txt');%导入数据
x=data(:,1);y=data(:,2);
figure
plot(x,y,'k')
xlabel('x')
ylabel('y')
%画出原始数据图
da=0.001;
a=-2:da:3;
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
deda=diff(e)/da;%计算数值微分
figure
plot(a(1:end-1),deda,'k')
xlabel('a')
ylabel('de/da')%画出导函数
f=sum(e(1:end-1))*da%误差函数的积分
