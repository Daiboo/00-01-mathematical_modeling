function f=fib(n)
    f=zeros(n,1);%������ʼ��
    if(n==1)
        f(1)=1;
    elseif(n==2)
        f(1)=1;f(2)=1;
    else
        f(1)=1;f(2)=1;%����ֵ
        for i=1:n-2
            f(i+2)=f(i+1)+f(i);%ѭ������쳲���������
        end
    end
end