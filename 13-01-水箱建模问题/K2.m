function k2=K2(t)
    T_day=24;
    c=mod(t,T_day);
%     flag1=c>=6&&c<=7;%�糿��ˮ
%     flag2=c>=11&&c<=12;%������ˮ
%     flag3=c>=17&&c<=22;%������ˮ
%     flag=flag1||flag2||flag3;
    flag=c>=16&&c<=22;%������ˮ
    if(flag)
        k2=1;%��ˮ�ڴ�
    else
        k2=0;
    end
end