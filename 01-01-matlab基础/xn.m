function x=xn(a,n)
x=zeros(n,1);%����n��1�е�0������ʼ��
x(1)=a;%����ֵ
for i=1:n-1
    x(i+1)=2/(x(i)-1);
end%���������������
end