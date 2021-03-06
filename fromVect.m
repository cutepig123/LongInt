function y=fromVect(a)
%例子:fromVect([-124 -1])
%将不规范的数变成规范的，输入的是向量，输出自定义的结构
%a 1*n
n=size(a,2);

%将第2-n项得数变成0-9之间的
for i=n:-1:2
    if a(i)>9 | a(i)<0
        yu=mod(a(i),10);
        shang=(a(i)-yu)/10;
        a(i-1)=a(i-1)+shang;
        a(i)=yu;
    end
end
%a
%如果第一位很大，就一直在前面添加进位
while a(1)>9
    yu=rem(a(1),10);
    shang=(a(1)-yu)/10;
    a(1)=yu;
    a=[shang a];
end
%a
%val保存绝对值，sign保存符号
%处理负数，或者非负数
if a(1)<0 %负数
    y=fromVect(-a);
    y.sign=-1;
else
    %while a(1)==0,a(1)=[];end
    n=size(a,2);
    i=1;
    while i<n & a(i)==0
        i=i+1;
    end
    a=a(1,i:n);
    %a
    y.val=a;
    y.sign=1;
end
