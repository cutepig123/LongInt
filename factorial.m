function y=factorial(a)
%计算整数a的阶乘
y=fromvect(1);
for i=a:-1:2
    y=mult(y,fromvect(i));
    if mod(i,10)==0,i,end
end

