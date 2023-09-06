%%  第四题：覆盖问题
c = ones(1,6);  % 目标函数的系数矩阵
intcon=[1:6];  % 整数变量的位置(一共6个决策变量，均为0-1整数变量)
% 线性不等式约束的系数矩阵和常数项向量
A =- [1 1 1 0 0 0;
         0 1 0 1 0 0;
         0 0 1 0 1 0;
         0 0 0 1 0 1;
         0 0 0 0 1 1;
         1 0 0 0 0 0;
         0 1 0 1 0 1];
b = -ones(7,1);
Aeq = []; beq = [];  % 不存在线性等式约束
lb = zeros(1,6);  % 约束变量的范围下限
ub = ones(1,6);  % 约束变量的范围上限
%最后调用intlinprog()函数
[x,fval]=intlinprog(c,intcon,A,b,Aeq,beq,lb,ub)
