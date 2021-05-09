function [shang,yu]=div(a,b)

%测试:a=fromvect(-12),b=fromvect(143),[s,y]=div(b,a)

asign=a.sign;bsign=b.sign;
a.sign=1;b.sign=1;
t2=fromvect(2);
n=fromvect(1);

%计算矩阵arr arr_n,分别保存2^i和 b*2^i
b2i=mult(b,n);
sub_r=sub(a,b2i);
i=1;arr(1)=b2i;arr_n(1)=n;
while sub_r.sign>0 & sub_r.val(1)>=0
    n=mult(n,t2);
    b2i=mult(b,n);
    sub_r=sub(a,b2i);
    i=i+1;arr(i)=b2i;arr_n(i)=n;
    if sub_r.val(1)==0
        shang=n;yu=sub_r;return;
        break;
    end
end


%计算商和余数,
%方法是从矩阵arr_n的高位到低位遍历,并用被除数依次减去
yu=a;
shang=fromvect(0);
for j=i:-1:1
   sub_r=sub(yu,arr(j));
%    j,arr(i).val,sub_r    
    if sub_r.sign>0 & sub_r.val(1)>=0
        shang=add(shang,arr_n(j));
        yu=sub_r;
    end
end
shang.sign=asign*bsign;
yu.sign=asign;

%%%%%%%%%%%%%%%%%%%%%%%%
% >> ta=-24521202,tb=-123456789,a=fromvect(ta);b=fromvect(tb);[s,y]=div(b,a),tb/ta,sub(sub(b,y),mult(a,s))
% 
% ta =
% 
%    -24521202
% 
% 
% tb =
% 
%   -123456789
% 
% 
% s = 
% 
%      val: 5
%     sign: 1
% 
% 
% y = 
% 
%      val: [8 5 0 7 7 9]
%     sign: -1
% 
% 
% ans =
% 
%     5.0347
% 
% 
% ans = 
% 
%      val: 0
%     sign: 1