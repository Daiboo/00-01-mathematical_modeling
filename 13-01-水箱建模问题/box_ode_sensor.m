function [h1,k1]=box_ode_sensor(k2,h0,dt,u,i)
    A=1;v=15;hlim_on=15;hlim_off=5;g=9.8;
    if(h0>hlim_on||i==1)
        k1=0;
    elseif(h0<=hlim_off)
        k1=1;
    else
        k1=u;
    end
    m=k1*v/A;n=k2*sqrt(2*g)/A;
    h1=h0+dt*(m-n*h0^0.5);
end