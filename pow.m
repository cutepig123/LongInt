function y=pow(a,k)
%k is integer>=2
%改进的最终乘方算法
kk=k;
if kk==0
    y=fromvect(1);
    return ;
end
i=floor(log2(kk));
kk=kk-(2^i);;
arr_i=i;n=i;
while kk>0
    i=floor(log2(kk));
    kk=kk-(2^i);
    arr_i=[i arr_i];
end
% fprintf('k可以分解为sum(2^i),下面是数组i:')
% arr_i



t=a;
for i=1:arr_i(1)
    t=mult(t,t);
end
% k=1;fprintf('[%d]计算a^(2^%d=%d)',k,arr_i(1),2^arr_i(1))
y=t;

for i=2:size(arr_i,2)
    for j=1:(arr_i(i)-arr_i(i-1))
        t=mult(t,t);
    end
%     k=k+1;fprintf('[%d]计算a^(2^%d=%d)',k,arr_i(i),2^arr_i(i)),t
%     fprintf('现在的y')
    y=mult(y,t);
end
