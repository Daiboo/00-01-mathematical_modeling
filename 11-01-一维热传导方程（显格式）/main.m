clear;close all;clc;
dx=0.1;dt=0.001;X=1;T=1;%ʱ�䡢�ռ䲽�����߽�
r=dt/(pi*dx)^2;%����rֵ
x=0:dx:X;%�ռ���ɢ��
t=0:dt:T;%ʱ����ɢ��
nx=length(x);%�ռ�����ά��
nt=length(t);%ʱ��������ά��
u=zeros(nx,nt);%����ֵ��ʼ��
u(:,1)=sin(pi*x);%��ʼ����
for j=1:nt-1
    u(2:nx-1,j+1)=r*u(1:nx-2,j)+(1-2*r)*u(2:nx-1,j)+r*u(3:nx,j);%���Ʒ���
    u(nx,j+1)=u(nx-1,j+1)-pi*dx*exp(-t(j+1));%�߽�����
end
subplot(121)
[t,x]=meshgrid(t,x);
surf(t,x,u)
xlabel('t')
ylabel('x')
zlabel('u')
axis([0,T,0,X,0,max(max(u))])
shading interp
title('��ֵ��')
subplot(122)
u1=exp(-t).*sin(pi*x);%������
surf(t,x,u1)
shading interp
xlabel('t')
ylabel('x')
zlabel('u')
axis([0,T,0,X,0,max(max(u))])
title('������')
figure
e=abs(u-u1);
surf(t,x,e)
shading interp
xlabel('t')
ylabel('x')
zlabel('e')
axis([0,T,0,X,0,max(max(e))])