function [t,uc]=RC(R,C,tend,u)
    dt=0.01;
    t=0:dt:tend;
    t=t';
    n=length(t);
    uc=zeros(n,1);
    for i=1:n-1
        uc(i+1)=uc(i)+dt/(R*C)*(u-uc(i));
    end
end