clear;close all;clc;
dt=0.01;%ʱ�䲽��
t=0:dt:1;%����ʱ������
n=length(t);%����ʱ�����е�ά��
X=zeros(2,n);
%������ö���2��n�У�������ʽ�����ǰ�����ģ�ÿһ��ʱ�̶�Ӧһ��
X(:,1)=[3/2;0];
A=[-2,-1;
    1 0];%΢�ַ��̾���
U=[cos(t);zeros(size(t))];
E=eye(2);%��λ��
for i=1:n-1
    X(:,i+1)=(A*dt+E)*X(:,i)+dt*U(:,i);
end
y=X(2,:);%��ֵ��
y1=t.*exp(-t)+1/2*sin(t);%������
figure
plot(t,y,'r',t,y1,'g')
xlabel('t')
ylabel('y')
legend('��ֵ��','������')
