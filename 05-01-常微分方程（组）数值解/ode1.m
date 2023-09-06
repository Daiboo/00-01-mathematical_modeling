function [y,t]=ode1(ts,te,dt)
%ts是初始时刻,dt时间间隔,te为结束时刻
    t=ts:dt:te;%定义时间序列
    n=length(t);%计算时间序列的维数
    y=zeros(size(t));%初始化函数值向量
    y(1)=1/3;%赋初值
    for i=1:n-1
        y(i+1)=(1-2*dt)*y(i)+dt*exp(t(i));
        %差分方程别写错，dt不能漏，exp中带ti
    end
end