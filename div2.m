function [shang,yu]=div2(a,b)
asign=a.sign;bsign=b.sign;
a.sign=1;b.sign=1;
na=size(a.val,2);
nb=size(b.val,2);

if na<nb
    shang=fromvect(0);
    yu=a;
    return;
end

i=1;
yu=fromvect(0);
shang=fromvect(0);
while i<=(na-nb+1)
    %��a��ȡi:(i+m-1)��
    aa.val=a.val(i:(nb+i-1));aa.sign=1;
    %����aa+10*yu����b���̺�������������(�ŵ�shang��)������(���浽yu��)��������
    yu=mult(yu,fromvect(10));
    [s,yu]=div(add(aa,yu),b);
    shang.val=[shang.val s.val];
    i=i+1;
    shang=formal(shang);
end

shang.sign=asign*bsign;
yu.sign=asign;