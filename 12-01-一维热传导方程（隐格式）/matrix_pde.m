function A=matrix_pde(m,q,r)
    A=zeros(m);
    A(1,1)=1+q;%��һ�е�һ��
    A(1,2)=-1;%��һ�еڶ���
    A(m,m)=1;%���һ�����һ��
    for i=2:m-1
        A(i,i)=1+2*r;%���Խ���
        A(i,i-1)=-r;%�¸��Խ���
        A(i,i+1)=-r;%�ϸ��Խ���
    end
end