function B = beziercubspline (u , D )
% Opis :
% beziercubspline izra�una sestavljeno Bezierjevo krivuljo
% stopnje 3 , ki je dvakrat zvezno odvedljiva v stikih
%
% Definicija :
% B = beziercubspline (u,D)
%
% Vhodna podatka :
% u seznam parametrov delitve dol�ine m+1 ,
% D matrika , v kateri vsaka izmed m+3 vrstic predstavlja
% eno kontrolno to�ko sestavljene krivulje
% Izhodni podatek :
% B seznam dol�ine m, v kateri je vsak element matrika s
% �tirimi vrsticami , ki dolo�ajo kontrolne to�ke kosa
% sestavljene krivulje

%�tevilo osdekov in dimeznija
[m,dim] = size(D);
m = m-3;

%diference parametra u
dif = diff(u);

%seznam B dol�ine m
B = cell(1,m);

%za�etne robne to�ke
B1 = zeros(4,dim);
B1(1,:) = D(1,:); %b_0 = d_-1
B1(2,:) = D(2,:); %b_1 = d_0
B1(3,:) = dif(2)/(dif(1)+dif(2))*D(2,:) + dif(1)/(dif(1)+dif(2))*D(3,:); 

B{1}=B1; 

%poravimo indekse D-ja tako, da te�ejo od 1 do m+1
D = D(3:end,:);

%kon�ne robne to�ke
Bm = zeros(4,dim);
Bm(4,:)=D(m+1,:); %Bm_3
Bm(3,:)=D(m,:);
Bm(2,:) = dif(m)/(dif(m-1)+dif(m))*D(m-1,:) + dif(m-1)/(dif(m-1)+dif(m))*D(m,:);

B{m}= Bm;

%vmesne to�ke
for i=1:(m-2)
    b = zeros(4,dim);
    
    b(2,:) = (dif(i+1)+dif(i+2))/(dif(i)+dif(i+1)+dif(i+2))*D(i,:) + (dif(i))/(dif(i)+dif(i+1)+dif(i+2))*D(i+1,:);
    b(3,:) = (dif(i+2))/(dif(i)+dif(i+1)+dif(i+2))*D(i,:) + (dif(i)+dif(i+1))/(dif(i)+dif(i+1)+dif(i+2))*D(i+1,:);
    
    B{i+1}=b;
end

for i=1:(m-1)
    b2 = B{i};
    b2 = b2(3,:);
    
    b1 = B{i+1};
    b1 = b1(2,:);
    
    b = dif(i+1)/(dif(i)+dif(i+1))*b2+ dif(i)/(dif(i)+dif(i+1))*b1;
    
    B{i}(4,:) = b;
    B{i+1}(1,:)= b;
end


end