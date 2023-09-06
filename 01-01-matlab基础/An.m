function A=An(n)
A=zeros(n);
for i=1:n
    A(i,i)=i;%主对角线上元素
end
for i=2:n
    A(i-1,i)=i;%上对角线
    A(i,i-1)=i-1;%下对角线
end
end