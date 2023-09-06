function [t,y,v]=vib_ode(m,B,k,tend)
g=9.8;
dt=0.01;
t=0:dt:tend;
t=t';
n=length(t);
X=zeros(2,n);
A=[-B/m,-k/m;1,0];
U=[m*g;0];
for i=1:n-1
    X(:,i+1)=X(:,i)+dt*(A*X(:,i)+U);
end
v=X(1,:);
y=X(2,:);
end