% function X=anbn_else(a1,b1,n)
clear;close all;clc;
a1=0.3;b1=0.7;n=10;
X=zeros(2,n);%��ʼ��
X(1,1)=a1;
X(2,1)=b1;%����ֵ
A=[1 1/2;
    0 1/2];%����
for i=1:n-1 
    X(:,i+1)=A*X(:,i);%ѭ������
end
figure
plot(X(1,:),'ro')
hold on
plot(X(2,:),'go')
% end