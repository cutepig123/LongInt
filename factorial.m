function y=factorial(a)
%��������a�Ľ׳�
y=fromvect(1);
for i=a:-1:2
    y=mult(y,fromvect(i));
    if mod(i,10)==0,i,end
end

