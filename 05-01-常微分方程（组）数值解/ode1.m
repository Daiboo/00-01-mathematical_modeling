function [y,t]=ode1(ts,te,dt)
%ts�ǳ�ʼʱ��,dtʱ����,teΪ����ʱ��
    t=ts:dt:te;%����ʱ������
    n=length(t);%����ʱ�����е�ά��
    y=zeros(size(t));%��ʼ������ֵ����
    y(1)=1/3;%����ֵ
    for i=1:n-1
        y(i+1)=(1-2*dt)*y(i)+dt*exp(t(i));
        %��ַ��̱�д��dt����©��exp�д�ti
    end
end