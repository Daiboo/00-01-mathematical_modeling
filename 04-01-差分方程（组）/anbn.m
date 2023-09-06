function [a,b]=anbn(a1,b1,n)%a1和b1是初值，n是计算的代数
    a=zeros(n,1);
    b=a;%初始化
    a(1)=a1;
    b(1)=b1;%赋初值
    for i=1:n-1
        a(i+1)=a(i)+1/2*b(i);
        b(i+1)=1/2*b(i);%计算差分方程组
    end
end