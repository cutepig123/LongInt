function y=formal(a)
%将不规范的变成规范的，输入输出wei自定义的结构
%a 1*n
if a.sign==-1
    y=fromVect(-a.val);
else
    y=fromVect(a.val);
end

