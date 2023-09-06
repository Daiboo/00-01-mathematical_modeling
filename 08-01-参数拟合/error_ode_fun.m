function e=error_ode_fun(A,B,t,x0)
    x=ode_fun(A,B,t);
    n=length(t);
    e=sum((x-x0).^2)^0.5/n;
end