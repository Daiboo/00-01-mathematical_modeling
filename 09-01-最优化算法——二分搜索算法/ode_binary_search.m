clear;close all;clc;
amin(1)=-3;amax(1)=4;i=1;%ȷ��������Χ
d=0.01;
a=amin(1):d:amax(1);
for m=1:length(a)
    b(m)=ode(a(m));
end
figure
plot(a,b,'k',a,zeros(size(a)),'b:')%��ͼ
xlabel('a');
ylabel('b')
title('b=F(a)')
hold on
while(abs(amax(i)-amin(i))>1e-3)%�����䳤��С��0.001ʱ����ѭ��
    pause(1)%ÿ��ѭ����ͣ1s
    amid(i)=(amax(i)+amin(i))/2;%���������е�
    bmid(i)=ode(amid(i));%���������е㴦����ֵ
    bmin(i)=ode(amin(i));
    bmax(i)=ode(amax(i));
    if(bmid(i)>0)%�������ֵ����Ŀ��ֵ
        amax(i+1)=amid(i);%���е�λ�ø�ֵ��xmax���´�������Χ[xmin,xmid]
        amin(i+1)=amin(i);
    else
        amin(i+1)=amid(i);%��֮���е�λ�ø�ֵ��xmin����һ��������Χ[xmin,xmax]
        amax(i+1)=amax(i);
    end
    plot(amid(i),bmid(i),'ro')%�ں���ͼ���ϻ����е������Ĺ���
    hold on
    i=i+1;
%     
end
a0=amid(end);
figure
plot(1:i-1,amid,'k',1:i,amax,'r',1:i,amin,'g')
xlabel('��������')
ylabel('�е������߽�λ�ñ仯')
legend('�е�','�����ұ߽�','������߽�')
title(['΢�ַ��̳�ֵΪa=',num2str(a0)])
figure
plot(1:i-1,bmid,'k',1:i-1,bmax,'r',1:i-1,bmin,'g')
xlabel('��������')
ylabel('�е������߽�λ�ô��ĺ���ֵ�仯')
legend('�е�','�����ұ߽�','������߽�')
[~,x,y]=ode(a0);


