clear;close all;clc;
x0=pi/2;dx=0.0001;
dfdx=(cos(x0+dx)-cos(x0))/dx%����cosx��x=x0������ֵ΢��
x=0:dx:x0;
intf=sum(cos(x(1:end-1))*dx)%����cosx��[0,x0]�ϵ���ֵ����
