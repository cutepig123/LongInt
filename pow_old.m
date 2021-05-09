function y=pow(a,k)
%k is integer>=2
y=a;
for i=2:k
    y=mult(y,a);
end