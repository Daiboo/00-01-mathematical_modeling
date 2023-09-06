function [s,n]=sum2n(N)
n=0;s=0;%赋初值
while(s<N)%当s<n时,计算
    n=n+1;
    s=s+2^n;%累加
end
s=s-2^n;
n=n-1;
end