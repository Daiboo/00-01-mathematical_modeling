clear;close all;clc;
dt=0.01;
t=0:dt:10;
dx=0.5;
x=0:dx:1;
nt=length(t);
nx=length(x);
T=zeros(nx,nt);
T(:,1)=25;%初值条件
T(1,:)=50-25*exp(-t);%边界条件
r=dt/dx^2;
m=dx;
for i=1:nt-1
    T(2,i+1)=r*T(3,i)+(1-2*r)*T(2,i)+r*T(1,i);%pde
    T(3,i+1)=(T(2,i+1)+50*m)/(1+m);%边界条件
end
[t,x]=meshgrid(t,x);
surf(t,x,T)
shading interp
