function y=pow(a,k)
%k is integer>=2
%改进的乘方算法,其实这个算法也可以再改进，可以记住a的2^i次方的结果，下面计算时只需要查找对应的项并且乘起来就行
y=a;
i=1;
while i*2<=k
    y=mult(y,y);
    i=i*2;
end
y
if i==k,return;end
while i<k
    y=mult(y,a);
    i=i+1;
end