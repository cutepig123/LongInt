function y=factorial2(a)
%��������a�Ľ׳�
y=fromvect(1);
for i=a:-1:2
    y=mult2(y,fromvect(i));
    if mod(i,10)==0,i,end
end

