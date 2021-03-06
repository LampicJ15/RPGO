function [b,BS,W] = rdecasteljau (B ,w , t )
% Opis :
% rdecasteljau vrne to�ko na racionalni Bezierjevi
% krivulji , ki je izra�unana z de Casteljaujevim
% postopkom , prirejenim za racionalni primer
%
% Definicija :
% b = rdecasteljau (B,w,t)
%
% Vhodni podatki :
% B matrika , katere vrstica predstavlja koordinate
% kontrolne to�ke racionalne Bezierjeve krivulje ,
% w seznam ute�i racionalne Bezierjeve krivulje ,
% t �tevilo , ki dolo�a vrednost delilnega parametra v
% de Casteljaujevem postopku
%
% Izhodni podatek :
% b vrstica , ki predstavlja to�ko na racionalni
% Bezierjevi krivulji pri parametru t

%stopnja polinoma
n = length(w)-1;

%decastelajujeva shema za ute�i
W = zeros(n+1,n+1);
W(:,1)=w;

for j=2:(n+1)
    for i=1:(n+2-j)
        W(i,j) = (1-t)*W(i,j-1) + t*W(i+1,j-1);
    end
end

%prirejena decasteljaujeva shema za ra�unanje kontrolnih to�k
BS = cell(n+1,n+1);

for i=1:(n+1)
BS{i,1}= B(i,:);
end

for j= 2:(n+1)
    for i=1:(n+2-j)
        BS{i,j} = (1-t)*W(i,j-1)/W(i,j)*BS{i,j-1} + t*W(i+1,j-1)/W(i,j)*BS{i+1,j-1};
    end
    for i=(n+3-j):(n+1)
        BS{i,j} = nan;
    end
end
b = BS{1,n+1};
end

