clear;close all;clc
D=1;%扩散系数
dt=0.01;%时间步长
t=0:dt:10;
dx=0.001;%空间步长
x=0:dx:1;
r=D*dt/dx^2;
q=dx;
nt=length(t);
nx=length(x);
T=zeros(nx,nt);
T(:,1)=25;
A=matrix_pde(nx,q,r);

for i=1:nt-1
    B=[50*q;T(2:end-1,i);50-25*exp(-t(i+1))];
    T(:,i+1)=inv(A)*B;
end

[t,x]=meshgrid(t,x);
surf(t,x,T)
shading interp