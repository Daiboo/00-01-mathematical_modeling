clear;close all;clc;
data=load('����.txt');%��������
x=data(:,1);y=data(:,2);
a=-2:0.001:3;
a=a';
n=length(a);
e=zeros(size(a));
for i=1:n
    e(i)=error_fun(a(i),x,y);
end
%�������
figure
plot(a,e,'k')
xlabel('a')
ylabel('e(a)')%��������ͼ

