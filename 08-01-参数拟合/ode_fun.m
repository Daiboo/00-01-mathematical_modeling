function x=ode_fun(A,B,t)
    dt=diff(t);
    n=length(t);
    x=zeros(size(t));
    x(1)=1;
    for i=1:n-1
        x(i+1)=x(i)+dt(i)*(A/x(i)+B*sin(t(i)));
        %���������t���ǵȼ���ģ����Ǳ䲽���ģ�����dtҲ������
    end
end