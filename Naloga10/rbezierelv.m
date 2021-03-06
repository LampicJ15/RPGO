function [ Be , we ] = rbezierelv (B , w )
% Opis :
% rbezierelv izvede vi�anje stopnje dane racionalne
% Bezierjeve krivulje
%
% Definicija :
% [Be ,we] = rbezierelv (B,w)
%
% Vhodna podatka :
% B matrika velikosti (n +1) x d, v kateri vsaka vrstica
% predstavlja d- dimenzionalno kontrolno to�ko
% racionalne Bezierjeve krivulje stopnje n,
% w seznam ute�i racionalne Bezierjeve krivulje
%
% Izhodni podatek :
% Be matrika velikosti n+2 x d, v kateri vsaka vrstica
% predstavlja d- dimenzionalno kontrolno to�ko
% racionalne Bezierjeve krvulje stopnje n+1 , ki je
% prirejena dani racionalni Bezierjevi krivulji ,
% we seznam dol�ine n+2 , v katerem vsak element
% predstavlja ute� racionalne Bezierjeve krvulje
% stopnje n+1 , ki je prirejena dani racionalni
% Bezierjevi krivulji
%

%velikost in deminzija
[n,d] = size(B);

%nB -> nove polinomske kontrolne to�ke (n x d+1) oblike (w_i*b_i,w_i)
nB = zeros(n,d+1);
for i =1:n
    nB(i,1:d)= w(i)*B(i,:);
end
nB(:,d+1)= w;

%povi�amo stopnjo kontrolnih to�k
nB = bezierOneUp(nB);

%izra�unamo nove ute�i
we = zeros(1,n+1);

for i=1:(n+1)
    we(i) = nB(i,d+1);
end
%izra�unamo �e kontrolne to�ke
Be = zeros(n+1,d);

for i=1:(n+1)
    Be(i,:) = nB(i,1:d)/we(i);
end



end
