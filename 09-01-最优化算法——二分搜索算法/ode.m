function [b,x,y]=ode(a)
    dx=0.01;
    x=0:dx:1;
    x=x';
    y=zeros(size(x));
    y(1)=a;
    n=length(x);
    for i=1:n-1
        y(i+1)=y(i)+dx*(1/((x(i))^2+(y(i))^2+1));
    end%微分方程数值解
    b=sum(y(1:n-1)*dx);%数值积分
end