function [X,Y,Z] = bezier2aux(Bx,By,Bz,u,v)
%Vrne koordinate bezierjeve ploskve pri parametrih u in v

%dolièlimo m in n
n = size(Bx,1)-1;
m = size(Bx,2)-1;

tocke = zeros(n+1,m+1,3);
tocke(:,:,1)=Bx;
tocke(:,:,2)=By;
tocke(:,:,3)=Bz; 

%dodatne kontrolne toèke
addCtrl = zeros(n+1,3);

for i=1:n+1
    B = squeeze(tocke(i,:,:));
    addCtrl(i,:)= bezier(B,[v]);
end

koordinate=bezier(addCtrl,[u]);
X=koordinate(1);
Y= koordinate(2);
Z = koordinate(3);
end