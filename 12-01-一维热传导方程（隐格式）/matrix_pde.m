function A=matrix_pde(m,q,r)
    A=zeros(m);
    A(1,1)=1+q;%第一行第一列
    A(1,2)=-1;%第一行第二列
    A(m,m)=1;%最后一行最后一列
    for i=2:m-1
        A(i,i)=1+2*r;%主对角线
        A(i,i-1)=-r;%下副对角线
        A(i,i+1)=-r;%上副对角线
    end
end