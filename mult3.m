function y=mult3(a,b)
%���ԣ�a=fromint(-12),b=fromint(102),mult(a,b)
%�㷨��
%�����a��b�ֱ�ӵͽ׵��߽����У��������ǵĻ�ΪcҲ�Ǵӵ͵������У���ô
%c(i+j-1)=sum|[i=1:na](sum|[j=1:nb](a(i)*b(j)))

na=size(a.val,2);
nb=size(b.val,2);
nc=na+nb-1;

tc=zeros(1,nc);%���˻��ŵ�����

%%�Ե�һ���ĸĽ�������Ϊ��ô���һ�㣬��ʵ��ȴ���˲��٣������������������̫�����ˣ��������㷴����ȥ��

for i=1:na
    j=1;
    k=nc-(i+j-1)+1;kb=nb-j+1;ka=na-i+1;
    for j=1:nb
        tc(k)=tc(k) + a.val(ka)*b.val(kb);
        k=k-1;
        kb=kb-1;
    end
end

y.val=tc;
y.sign=a.sign*b.sign;
y=formal(y);