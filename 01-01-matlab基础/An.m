function A=An(n)
A=zeros(n);
for i=1:n
    A(i,i)=i;%���Խ�����Ԫ��
end
for i=2:n
    A(i-1,i)=i;%�϶Խ���
    A(i,i-1)=i-1;%�¶Խ���
end
end