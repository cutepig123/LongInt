function y=pow(a,k)
%k is integer>=2
%�Ľ������ճ˷��㷨
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
% fprintf('k���Էֽ�Ϊsum(2^i),����������i:')
% arr_i



t=a;
for i=1:arr_i(1)
    t=mult(t,t);
end
% k=1;fprintf('[%d]����a^(2^%d=%d)',k,arr_i(1),2^arr_i(1))
y=t;

for i=2:size(arr_i,2)
    for j=1:(arr_i(i)-arr_i(i-1))
        t=mult(t,t);
    end
%     k=k+1;fprintf('[%d]����a^(2^%d=%d)',k,arr_i(i),2^arr_i(i)),t
%     fprintf('���ڵ�y')
    y=mult(y,t);
end
