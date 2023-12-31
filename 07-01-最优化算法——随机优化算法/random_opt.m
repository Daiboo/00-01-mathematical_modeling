clear;close all;clc;
%初始化
s=0;N=100;i=1;%初始化计数值、阈值和循环变量
%%
%随机优化算法
while(s<N)
    x=6*rand;%rand是产生0-1上的随机数
    y=f(x);%带入函数计算
    Y(i)=y;%将当前循环计算出函数值存入Y向量中
    miny=min(Y);%计算当前循环Y向量最小值
    minY(i)=miny;%将当前循环Y向量最小值存入向量minY中
    if(i==1)
        x0=x;%第一次循环保存自变量
    else
        if(minY(i)<minY(i-1))%minY最新一次更新的值比前一次循环小
            %则认为找到一个更小的值，保存此次循环产生的自变量
            %同时计数值置0
            s=0;x0=x;
        else
            s=s+1;%反之，计数值增1
        end
    end
    i=i+1;%循环次数增1
end
%%
%输出结果
xmin=x0
ymin=minY(end)%输出最小值及其对应x值
plot(minY,'k')%画出阶梯迭代图
xlabel('迭代次数')
ylabel('函数最小值变化')
title(['函数最小值为',num2str(ymin),',对应自变量为',num2str(xmin)])