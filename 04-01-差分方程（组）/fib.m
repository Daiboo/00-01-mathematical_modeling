function f=fib(n)
    f=zeros(n,1);%向量初始化
    if(n==1)
        f(1)=1;
    elseif(n==2)
        f(1)=1;f(2)=1;
    else
        f(1)=1;f(2)=1;%赋初值
        for i=1:n-2
            f(i+2)=f(i+1)+f(i);%循环计算斐波那契数列
        end
    end
end