function y=mult3(a,b)
%测试：a=fromint(-12),b=fromint(102),mult(a,b)
%算法：
%如果将a，b分别从低阶到高阶排列，假设他们的积为c也是从低到高排列，那么
%c(i+j-1)=sum|[i=1:na](sum|[j=1:nb](a(i)*b(j)))

na=size(a.val,2);
nb=size(b.val,2);
nc=na+nb-1;

tc=zeros(1,nc);%将乘积放到这里

%%对第一个的改进。本以为这么会快一点，事实上却慢了不少，估计这里数组的索引太复杂了，导致运算反而上去了

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