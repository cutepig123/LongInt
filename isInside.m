function y=isInside(pt,triangle)
%�жϵ��Ƿ����������ڲ�������Ҳ�㣩
%pt 2*1,triangle 2*3
%lizi:   isInside([-1;-1],[0 0 1;1 0 0])

%��������㵽�������������������dxy
dxy=triangle-[pt pt pt];

if abs(dxy(:,1))<.01 | abs(dxy(:,2))<.01 | abs(dxy(:,3))<.01
    disp('��������������');
    y=0;
    return;
end
%����Ϊ������������dxy֮��˴˵ļн�s1,s2,s3��������|u|*|v|cos(sita)=u.*v
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

%�����������н�֮���Ƿ����360��
diff=s1+s2+s3-2*pi;
if abs(diff)<.05
    disp('��������������');
else
    disp('�㲻������������');    
end
y=diff;