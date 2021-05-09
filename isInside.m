function y=isInside(pt,triangle)
%判断点是否在三角形内部（边上也算）
%pt 2*1,triangle 2*3
%lizi:   isInside([-1;-1],[0 0 1;1 0 0])

%计算这个点到三角形三个顶点的向量dxy
dxy=triangle-[pt pt pt];

if abs(dxy(:,1))<.01 | abs(dxy(:,2))<.01 | abs(dxy(:,3))<.01
    disp('点在三角形里面');
    y=0;
    return;
end
%以下为计算三个向量dxy之间彼此的夹角s1,s2,s3，方法是|u|*|v|cos(sita)=u.*v
i=1;j=2;
tx=dxy(1,i)*dxy(1,j)+dxy(2,i)*dxy(2,j);
ty=norm(dxy(:,i))*norm(dxy(:,j));
s1=acos(tx/ty);
        
i=3;j=2;
tx=dxy(1,i)*dxy(1,j)+dxy(2,i)*dxy(2,j);
ty=norm(dxy(:,i))*norm(dxy(:,j));
s2=acos(tx/ty);
        
i=1;j=3;
tx=dxy(1,i)*dxy(1,j)+dxy(2,i)*dxy(2,j);
ty=norm(dxy(:,i))*norm(dxy(:,j));
s3=acos(tx/ty);

%看看这三个夹角之和是否等于360度
diff=s1+s2+s3-2*pi;
if abs(diff)<.05
    disp('点在三角形里面');
else
    disp('点不在三角形里面');    
end
y=diff;