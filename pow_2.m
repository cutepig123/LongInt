function y=pow(a,k)
%k is integer>=2
%�Ľ��ĳ˷��㷨,��ʵ����㷨Ҳ�����ٸĽ������Լ�סa��2^i�η��Ľ�����������ʱֻ��Ҫ���Ҷ�Ӧ����ҳ���������
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