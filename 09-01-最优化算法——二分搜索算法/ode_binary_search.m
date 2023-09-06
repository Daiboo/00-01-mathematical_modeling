clear;close all;clc;
amin(1)=-3;amax(1)=4;i=1;%确定搜索范围
d=0.01;
a=amin(1):d:amax(1);
for m=1:length(a)
    b(m)=ode(a(m));
end
figure
plot(a,b,'k',a,zeros(size(a)),'b:')%作图
xlabel('a');
ylabel('b')
title('b=F(a)')
hold on
while(abs(amax(i)-amin(i))>1e-3)%当区间长度小于0.001时结束循环
    pause(1)%每次循环暂停1s
    amid(i)=(amax(i)+amin(i))/2;%计算区间中点
    bmid(i)=ode(amid(i));%计算区间中点处函数值
    bmin(i)=ode(amin(i));
    bmax(i)=ode(amax(i));
    if(bmid(i)>0)%如果函数值大于目标值
        amax(i+1)=amid(i);%则将中点位置赋值给xmax，下次搜索范围[xmin,xmid]
        amin(i+1)=amin(i);
    else
        amin(i+1)=amid(i);%反之则将中点位置赋值给xmin，下一次搜索范围[xmin,xmax]
        amax(i+1)=amax(i);
    end
    plot(amid(i),bmid(i),'ro')%在函数图像上画出中点收敛的过程
    hold on
    i=i+1;
%     
end
a0=amid(end);
figure
plot(1:i-1,amid,'k',1:i,amax,'r',1:i,amin,'g')
xlabel('迭代次数')
ylabel('中点和区间边界位置变化')
legend('中点','区间右边界','区间左边界')
title(['微分方程初值为a=',num2str(a0)])
figure
plot(1:i-1,bmid,'k',1:i-1,bmax,'r',1:i-1,bmin,'g')
xlabel('迭代次数')
ylabel('中点和区间边界位置处的函数值变化')
legend('中点','区间右边界','区间左边界')
[~,x,y]=ode(a0);


