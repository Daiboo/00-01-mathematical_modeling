function x=xn(a,n)
x=zeros(n,1);%生产n行1列的0向量初始化
x(1)=a;%赋初值
for i=1:n-1
    x(i+1)=2/(x(i)-1);
end%迭代计算递推数列
end