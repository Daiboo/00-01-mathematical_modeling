function [a,b]=anbn(a1,b1,n)%a1��b1�ǳ�ֵ��n�Ǽ���Ĵ���
    a=zeros(n,1);
    b=a;%��ʼ��
    a(1)=a1;
    b(1)=b1;%����ֵ
    for i=1:n-1
        a(i+1)=a(i)+1/2*b(i);
        b(i+1)=1/2*b(i);%�����ַ�����
    end
end