function k2=K2(t)
    T_day=24;
    c=mod(t,T_day);
%     flag1=c>=6&&c<=7;%早晨用水
%     flag2=c>=11&&c<=12;%中午用水
%     flag3=c>=17&&c<=22;%晚上用水
%     flag=flag1||flag2||flag3;
    flag=c>=16&&c<=22;%晚上用水
    if(flag)
        k2=1;%用水期打开
    else
        k2=0;
    end
end