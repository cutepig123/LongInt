function y=fromInt(a)
%Р§зг:fromInt(-124)
b=[];
if a==0
    y.val=0;
    y.sign=1;
elseif a>0
    while a>0
        yu=mod(a,10);
        b=[yu b];
        a=(a-yu)/10;
    end
    y.val=b;
    y.sign=1;
else
    y=fromInt(-a);
    y.sign=-1;
end