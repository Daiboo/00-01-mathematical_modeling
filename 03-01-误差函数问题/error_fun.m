function e=error_fun(a,x,y)
    y1=exp(a*x);%��������ֵ
    n=length(x);
    e=sum((y-y1).^2)^0.5/n;%���������
end