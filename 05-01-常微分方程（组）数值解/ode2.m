clear;close all;clc;
dt=0.01;%时间步长
t=0:dt:1;%定义时间序列
n=length(t);%计算时间序列的维数
X=zeros(2,n);
%这里最好定义2行n列，矩阵形式计算是按列算的，每一个时刻对应一列
X(:,1)=[3/2;0];
A=[-2,-1;
    1 0];%微分方程矩阵
U=[cos(t);zeros(size(t))];
E=eye(2);%单位阵
for i=1:n-1
    X(:,i+1)=(A*dt+E)*X(:,i)+dt*U(:,i);
end
y=X(2,:);%数值解
y1=t.*exp(-t)+1/2*sin(t);%解析解
figure
plot(t,y,'r',t,y1,'g')
xlabel('t')
ylabel('y')
legend('数值解','解析解')
