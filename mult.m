function y=mult(a,b)
%���ԣ�a=fromint(-12),b=fromint(102),mult(a,b)
%�㷨��
%�����a��b�ֱ�ӵͽ׵��߽����У��������ǵĻ�ΪcҲ�Ǵӵ͵������У���ô
%c(i+j-1)=sum|[i=1:na](sum|[j=1:nb](a(i)*b(j)))

na=size(a.val,2);
nb=size(b.val,2);
nc=na+nb-1;
%�Ƚ����������ֱ�ӵ�λ����λ�ţ��Ա��ڼ���ͣ���Ȼ����Ҳ�У����Ǵ��벻����ô�������ף�
ta=a.val(na:-1:1);
tb=b.val(nb:-1:1);
tc=zeros(1,nc);%���˻��ŵ�����

for i=1:na
    for j=1:nb
        tc(i+j-1)=tc(i+j-1) + ta(i)*tb(j);
    end
end

y.val=tc(nc:-1:1);
y.sign=a.sign*b.sign;
y=formal(y);