clear;close all;clc;
n=10;%10代人
N=1:n;
a1=[0.3 0.5 0.7];b1=[0.7 0.5 0.3];%三种初值情况
for i=1:3%初值循环画图计算
    [a,b]=anbn(a1(i),b1(i),n);
    figure(i)
    plot(N,a,'r*',N,b,'go');
    xlabel('第n代')
    ylabel('人数占比')%横纵坐标
    legend('AA基因型','Aa基因型')%图例
    title(['a_1=',num2str(a1(i)),'b_1=',num2str(b1(i))])
    %标题num2str是将数据转为字符串，然后用矩阵形式连接
end