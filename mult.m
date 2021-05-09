function y=mult(a,b)
%测试：a=fromint(-12),b=fromint(102),mult(a,b)
%算法：
%如果将a，b分别从低阶到高阶排列，假设他们的积为c也是从低到高排列，那么
%c(i+j-1)=sum|[i=1:na](sum|[j=1:nb](a(i)*b(j)))

na=size(a.val,2);
nb=size(b.val,2);
nc=na+nb-1;
%先将两个乘数分别从低位到高位排，以便于计算和（当然不变也行，但是代码不如这么作好明白）
ta=a.val(na:-1:1);
tb=b.val(nb:-1:1);
tc=zeros(1,nc);%将乘积放到这里

for i=1:na
    for j=1:nb
        tc(i+j-1)=tc(i+j-1) + ta(i)*tb(j);
    end
end

y.val=tc(nc:-1:1);
y.sign=a.sign*b.sign;
y=formal(y);