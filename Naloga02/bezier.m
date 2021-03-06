function b = bezier (B,t)
% Opis :
% bezier vrne tocke na Bezierjevi krivulji pri danih
% parametrih
%%Definicija :
% b = bezier (B,t)
%
% Vhodna podatka :
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% tocke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dol�ine k, pri katerih racunamo
% vrednost Bezierjeve krivulje
%%Izhodni podatek :
% b matrika velikosti k x d, kjer i-ta vrstica
% predstavlja tocko na Bezierjevi krivulji pri
% parametru iz t na i- tem mestu

%n = stopnja + 1, d=dimenzija
[n,d]=size(B);
%�tevilo parametrov t
k = length(t);

b = zeros(k,d);

for i=1:k
    D=decasteljau(B,t(i));
    b(i,:) = D{1,end};
end

end