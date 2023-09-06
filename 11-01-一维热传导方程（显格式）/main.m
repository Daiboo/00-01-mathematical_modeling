clear;close all;clc;
dx=0.1;dt=0.001;X=1;T=1;%时间、空间步长及边界
r=dt/(pi*dx)^2;%计算r值
x=0:dx:X;%空间离散化
t=0:dt:T;%时间离散化
nx=length(x);%空间向量维数
nt=length(t);%时间向量的维数
u=zeros(nx,nt);%函数值初始化
u(:,1)=sin(pi*x);%初始条件
for j=1:nt-1
    u(2:nx-1,j+1)=r*u(1:nx-2,j)+(1-2*r)*u(2:nx-1,j)+r*u(3:nx,j);%控制方程
    u(nx,j+1)=u(nx-1,j+1)-pi*dx*exp(-t(j+1));%边界条件
end
subplot(121)
[t,x]=meshgrid(t,x);
surf(t,x,u)
xlabel('t')
ylabel('x')
zlabel('u')
axis([0,T,0,X,0,max(max(u))])
shading interp
title('数值解')
subplot(122)
u1=exp(-t).*sin(pi*x);%解析解
surf(t,x,u1)
shading interp
xlabel('t')
ylabel('x')
zlabel('u')
axis([0,T,0,X,0,max(max(u))])
title('解析解')
figure
e=abs(u-u1);
surf(t,x,e)
shading interp
xlabel('t')
ylabel('x')
zlabel('e')
axis([0,T,0,X,0,max(max(e))])