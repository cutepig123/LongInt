function y=add(a,b)
%���������Ӧ���ǽṹ��������fomal�������
%a 1*m, b 1*n
if a.sign<0,a.val=-a.val;a.sign=1;end
if b.sign<0,b.val=-b.val;b.sign=1;end

[l,m]=size(a.val);
[l,n]=size(b.val);
l=max(m,n);
a.val=[zeros(1,l-m) a.val];
b.val=[zeros(1,l-n) b.val];
y.val=a.val+b.val;
y.sign=1;
y=formal(y);

