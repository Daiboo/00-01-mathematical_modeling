function [s,n]=sum2n(N)
n=0;s=0;%����ֵ
while(s<N)%��s<nʱ,����
    n=n+1;
    s=s+2^n;%�ۼ�
end
s=s-2^n;
n=n-1;
end