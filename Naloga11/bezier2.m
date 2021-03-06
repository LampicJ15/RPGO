function [ bx , by , bz ] = bezier2 ( Bx , By ,Bz ,u , v )
% Opis :
% bezier2 vrne to�ke na Bezierjevi ploskvi iz tenzorskega
% produkta
%
% Definicija :
% [bx ,by ,bz] = bezier2 (Bx ,By ,Bz ,u,v)
%
% Vhodni podatki :
% Bx , By , Bz matrike velikosti n+1 x m+1 , ki dolo�ajo
% koordinate kontrolnih to�k ,
% u, v vrstici dol�ine M in N, ki predstavljata
% parametre v smereh u in v.
%
% Izhodni podatki :
% bx , by , bz matrike velikosti N x M, ki predstavljajo
% to�ke na Bezierjevi ploskvi :
% [bx(J,I) by(J,I) bz(J,I)] je to�ka pri
% parametrih u(I) in v(J).

%doli�limo m in n
n = size(Bx,1)-1;
m = size(Bx,2)-1;

M = length(u);
N = length(v);

%za vsak parameter v naredimo nove kontrolne to�ke
bx = zeros(M,N);
by = zeros(M,N);
bz = zeros(M,N);

for j=1:N
    for i = 1:M
        [x y z]= bezier2aux(Bx,By,Bz,u(i),v(j));
        bx(i,j) = x;
        by(i,j) = y;
        bz(i,j) = z;
    end
end


end