function y=mult2(a,b)
%���ԣ�a=fromint(-12),b=fromint(102),mult(a,b)
%�㷨���Ľ��ĳ˷�����a,����b�����λΪ0ʱ��ֱ�ӽ�����������0������(��ֵ�������Ч�ʷ����½��˲��٣���)
%a=formal(a);b=formal(b);

na=size(a.val,2);
nb=size(b.val,2);

%ͳ��a��b�ӵ�λ��ʼ�ж��ٸ�������0
cnta=0;
for i=na:-1:2
    if a.val(i)~=0
        break;
    end
    cnta=cnta+1;
end
if cnta>0 ,a.val((na-cnta+1):na)=[];end
cntb=0;
for i=nb:-1:2
    if b.val(i)~=0
        break;
    end
    cntb=cntb+1;
end
if cntb>0,b.val((nb-cntb+1):nb)=[];end

% y=mult(a,b);%%%%%%%%%%%%%
na=na-cnta;
nb=nb-cntb;
nc=na+nb-1;
ta=a.val(na:-1:1);
tb=b.val(nb:-1:1);
tc=zeros(1,nc);

for i=1:na
    for j=1:nb
        tc(i+j-1)=tc(i+j-1) + ta(i)*tb(j);
    end
end

y.val=[tc(nc:-1:1)  zeros(1,cnta+cntb)];
y.sign=a.sign*b.sign;
y=formal(y);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%y.val=[y.val zeros(1,cnta+cntb)];
%y=formal(y);