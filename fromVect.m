function y=fromVect(a)
%����:fromVect([-124 -1])
%�����淶������ɹ淶�ģ������������������Զ���Ľṹ
%a 1*n
n=size(a,2);

%����2-n��������0-9֮���
for i=n:-1:2
    if a(i)>9 | a(i)<0
        yu=mod(a(i),10);
        shang=(a(i)-yu)/10;
        a(i-1)=a(i-1)+shang;
        a(i)=yu;
    end
end
%a
%�����һλ�ܴ󣬾�һֱ��ǰ�����ӽ�λ
while a(1)>9
    yu=rem(a(1),10);
    shang=(a(1)-yu)/10;
    a(1)=yu;
    a=[shang a];
end
%a
%val�������ֵ��sign�������
%�������������߷Ǹ���
if a(1)<0 %����
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