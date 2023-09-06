function x=ode_fun(A,B,t)
    dt=diff(t);
    n=length(t);
    x=zeros(size(t));
    x(1)=1;
    for i=1:n-1
        x(i+1)=x(i)+dt(i)*(A/x(i)+B*sin(t(i)));
        %这里的数据t不是等间隔的，就是变步长的，所以dt也是向量
    end
end