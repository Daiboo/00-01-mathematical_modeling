clear;close all;clc;
n=10;%10����
N=1:n;
a1=[0.3 0.5 0.7];b1=[0.7 0.5 0.3];%���ֳ�ֵ���
for i=1:3%��ֵѭ����ͼ����
    [a,b]=anbn(a1(i),b1(i),n);
    figure(i)
    plot(N,a,'r*',N,b,'go');
    xlabel('��n��')
    ylabel('����ռ��')%��������
    legend('AA������','Aa������')%ͼ��
    title(['a_1=',num2str(a1(i)),'b_1=',num2str(b1(i))])
    %����num2str�ǽ�����תΪ�ַ�����Ȼ���þ�����ʽ����
end