clear;close all;clc;
xmin(1)=0.01;xmax(1)=4;i=1;%ȷ��������Χ
x=xmin(1):0.01:xmax(1);
y=f(x);
figure
plot(x,y,'k',x,2*ones(size(x)),'b:')%��ͼ
xlabel('x');
ylabel('y')
title('y=lnx+x')
hold on
while(abs(xmax(i)-xmin(i))>1e-3)%�����䳤��С��0.001ʱ����ѭ��
    pause(1)%ÿ��ѭ����ͣ1s
    xmid(i)=(xmax(i)+xmin(i))/2;%���������е�
    ymid(i)=f(xmid(i));
    ymin(i)=f(xmin(i));
    ymax(i)=f(xmax(i));
    %���������е�����߽紦����ֵ
    if(ymid(i)>2)%�������ֵ����Ŀ��ֵ
        xmax(i+1)=xmid(i);%���е�λ�ø�ֵ��xmax���´�������Χ[xmin,xmid]
        xmin(i+1)=xmin(i);
    else
        xmin(i+1)=xmid(i);%��֮���е�λ�ø�ֵ��xmin����һ��������Χ[xmin,xmax]
        xmax(i+1)=xmax(i);
    end
    plot(xmid(i),ymid(i),'o')%�ں���ͼ���ϻ����е������Ĺ���
    hold on
    i=i+1;
     
end
figure
plot(1:i-1,xmid,'k',1:i,xmax,'r',1:i,xmin,'g')
xlabel('��������')
ylabel('�е������߽�λ�ñ仯')
legend('�е�','�����ұ߽�','������߽�')
title(['����lnx+x=2�Ľ�Ϊx=',num2str(xmid(end))])
figure
plot(1:i-1,ymid,'k',1:i-1,ymax,'r',1:i-1,ymin,'g')
xlabel('��������')
ylabel('�е������߽�λ�ô��ĺ���ֵ�仯')
legend('�е�','�����ұ߽�','������߽�')
