clear;close all;clc;
x0=pi/2;dx=0.0001;
dfdx=(cos(x0+dx)-cos(x0))/dx%函数cosx在x=x0处的数值微分
x=0:dx:x0;
intf=sum(cos(x(1:end-1))*dx)%函数cosx在[0,x0]上的数值积分
