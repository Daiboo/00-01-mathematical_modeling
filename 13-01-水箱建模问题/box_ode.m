function [t,h]=box_ode(m,n,h0,tend)
    dt=0.01;
    t=0:dt:tend;
    t=t';
    h=zeros(size(t));
    h(1)=h0;
    nt=length(t);
    for i=1:nt-1
        h(i+1)=h(i)+dt*(m-n*(h(i))^0.5);
    end
end