clear;close all;clc;
data=load('����.txt');%��������
x=data(:,1);y=data(:,2);
figure
plot(x,y,'k')
xlabel('x')
ylabel('y')
%����ԭʼ����ͼ
da=0.001;
a=-2:da:3;
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
deda=diff(e)/da;%������ֵ΢��
figure
plot(a(1:end-1),deda,'k')
xlabel('a')
ylabel('de/da')%����������
f=sum(e(1:end-1))*da%�����Ļ���
