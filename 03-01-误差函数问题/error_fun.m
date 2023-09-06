function e=error_fun(a,x,y)
    y1=exp(a*x);%函数计算值
    n=length(x);
    e=sum((y-y1).^2)^0.5/n;%均方根误差
end