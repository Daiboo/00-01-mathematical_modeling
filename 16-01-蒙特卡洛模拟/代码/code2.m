%%  蒙特卡罗用于模拟三门问题
clear;clc
%% （1）预备知识
% randi([a,b],m,n)函数可在指定区间[a,b]内随机取出大小为m*n的整数矩阵
randi([1,5],5,8) %在区间[1,5]内随机取出大小为5*8的整数矩阵
%      2     5     4     5     3     1     4     2
%      3     3     1     5     4     2     1     2
%      4     1     3     3     2     2     5     1
%      5     3     3     4     4     5     4     4
%      4     2     3     4     2     4     2     4
randi([1,5])   %在区间[1,5]内随机取出1个整数
%     3

% 字符串的连接方式：(1)['字符串1','字符串2'] (2)strcat('字符串1','字符串2') （第一期视频第一讲）
['数学建模','学习交流']
strcat('数学建模','学习交流')

% num2str函数：将数值转换为字符串 （第一期视频第一讲）
mystr = num2str(1224)  % 注意观察工作区的mystr这个变量的值
disp([num2str(1224),'祝大家平安夜平平安安'])  % disp函数是输出函数

%% （2）代码部分（在成功的条件下的概率）
n = 100000;  % n代表蒙特卡罗模拟重复次数
a = 0;  % a表示不改变主意时能赢得汽车的次数
b = 0;  % b表示改变主意时能赢得汽车的次数
for i= 1 : n  % 开始模拟n次
    x = randi([1,3]);  % 随机生成一个1-3之间的整数x表示汽车出现在第x扇门后
    y = randi([1,3]);  % 随机生成一个1-3之间的整数y表示自己选的门
    % 下面分为两种情况讨论：x=y和x~=y
    if x == y   % 如果x和y相同，那么我们只有不改变主意时才能赢
        a = a + 1;     b = b + 0;
    else  % x ~= y ，如果x和y不同，那么我们只有改变主意时才能赢
        a = a + 0;     b = b +1;
    end
end
disp(['蒙特卡罗方法得到的不改变主意时的获奖概率为：', num2str(a/n)]);
disp(['蒙特卡罗方法得到的改变主意时的获奖概率为：', num2str(b/n)]);


%% （3）考虑失败情况的代码(无条件概率)
n = 100000000;  % n代表蒙特卡罗模拟重复次数
a = 0;  % a表示不改变主意时能赢得汽车的次数
b = 0;  % b表示改变主意时能赢得汽车的次数
c = 0;  % c表示没有获奖的次数
for i= 1 : n  % 开始模拟n次
    x = randi([1,3]);  % 随机生成一个1-3之间的整数x表示汽车出现在第x扇门后
    y = randi([1,3]);  % 随机生成一个1-3之间的整数y表示自己选的门
    change = randi([0, 1]); % change =0  不改变主意，change = 1 改变主意
    % 下面分为两种情况讨论：x=y和x~=y
    if x == y   % 如果x和y相同，那么我们只有不改变主意时才能赢
        if change == 0  % 不改变主意
        	a = a + 1; 
        else  % 改变了主意
            c= c+1;
        end
    else  % x ~= y ，如果x和y不同，那么我们只有改变主意时才能赢
         if change == 0  % 不改变主意
        	c = c + 1; 
        else  % 改变了主意
            b= b + 1;
         end
    end
end
disp(['蒙特卡罗方法得到的不改变主意时的获奖概率为：', num2str(a/n)]);
disp(['蒙特卡罗方法得到的改变主意时的获奖概率为：', num2str(b/n)]);
disp(['蒙特卡罗方法得到的没有获奖的概率为：', num2str(c/n)]);




% % 注意：代码文件仅供参考，一定不要直接用于自己的数模论文中
% % 国赛对于论文的查重要求非常严格，代码雷同也算作抄袭
% % 视频中提到的附件可在售后群（购买后收到的那个无忧自动发货的短信中有加入方式）的群文件中下载。包括讲义、代码、我视频中推荐的资料等。
% % 关注我的微信公众号《数学建模学习交流》，后台发送“软件”两个字，可获得常见的建模软件下载方法；发送“数据”两个字，可获得建模数据的获取方法；发送“画图”两个字，可获得数学建模中常见的画图方法。另外，也可以看看公众号的历史文章，里面发布的都是对大家有帮助的技巧。
% % 购买更多优质精选的数学建模资料，可关注我的微信公众号《数学建模学习交流》，在后台发送“买”这个字即可进入店铺(我的微店地址：https://weidian.com/?userid=1372657210)进行购买。
% % 视频价格不贵，但价值很高。单人购买观看只需要58元，三人购买人均仅需46元，视频本身也是下载到本地观看的，所以请大家不要侵犯知识产权，对视频或者资料进行二次销售。
% % 如何修改代码避免查重的方法：https://www.bilibili.com/video/av59423231（必看）