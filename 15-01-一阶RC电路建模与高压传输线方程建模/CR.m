function [t,uc]=CR(C,R,u,tend)
dt=0.01;
t=0:dt:tend;
t=t';
n=length(t);
uc=zeros(n,1);
uc(1)=u;
for i=1:n-1
    uc(i+1)=(1-dt/(R*C))*uc(i);
end
end