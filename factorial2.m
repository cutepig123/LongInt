function y=factorial2(a)
%计算整数a的阶乘
y=fromvect(1);
for i=a:-1:2
    y=mult2(y,fromvect(i));
    if mod(i,10)==0,i,end
end

