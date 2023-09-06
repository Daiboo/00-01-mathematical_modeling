clear;close all;clc;
xmin(1)=0.01;xmax(1)=4;i=1;%确定搜索范围
x=xmin(1):0.01:xmax(1);
y=f(x);
figure
plot(x,y,'k',x,2*ones(size(x)),'b:')%作图
xlabel('x');
ylabel('y')
title('y=lnx+x')
hold on
while(abs(xmax(i)-xmin(i))>1e-3)%当区间长度小于0.001时结束循环
    pause(1)%每次循环暂停1s
    xmid(i)=(xmax(i)+xmin(i))/2;%计算区间中点
    ymid(i)=f(xmid(i));
    ymin(i)=f(xmin(i));
    ymax(i)=f(xmax(i));
    %计算区间中点和两边界处函数值
    if(ymid(i)>2)%如果函数值大于目标值
        xmax(i+1)=xmid(i);%则将中点位置赋值给xmax，下次搜索范围[xmin,xmid]
        xmin(i+1)=xmin(i);
    else
        xmin(i+1)=xmid(i);%反之则将中点位置赋值给xmin，下一次搜索范围[xmin,xmax]
        xmax(i+1)=xmax(i);
    end
    plot(xmid(i),ymid(i),'o')%在函数图像上画出中点收敛的过程
    hold on
    i=i+1;
     
end
figure
plot(1:i-1,xmid,'k',1:i,xmax,'r',1:i,xmin,'g')
xlabel('迭代次数')
ylabel('中点和区间边界位置变化')
legend('中点','区间右边界','区间左边界')
title(['方程lnx+x=2的解为x=',num2str(xmid(end))])
figure
plot(1:i-1,ymid,'k',1:i-1,ymax,'r',1:i-1,ymin,'g')
xlabel('迭代次数')
ylabel('中点和区间边界位置处的函数值变化')
legend('中点','区间右边界','区间左边界')
