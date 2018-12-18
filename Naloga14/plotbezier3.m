function plotbezier3(Bx,By,Bz,d)
% Opis :
% plotbezier3 izrise toèke na trikotni Bezierjevi ploskvi
%
% Definicija :
% plotbezier3 (Bx ,By ,Bz ,d)
%
% Vhodni podatki :
% Bx , By , Bz matrike velikosti n+1 x n+1 , ki doloèajo
% koordinate kontrolnih toèk Bezierjeve krpe
% (element posamezne matrike na mestu (i,j),
% j <= n+2 -i, doloèa koordinato kontrolne
% toèke z indeksom (n+2 -i-j, j -1 , i -1)),
% d stevilo intervalov, na katere je razdeljena stranica trikotnika

%sestavimo triangulacijo trikotnika
[TRI,U] = trimeshgrid(d);
%tocke
b = bezier3(Bx,By,Bz,U);

clf;
trimesh(TRI,b(:,1),b(:,2),b(:,3));
hold on;
trimesh(TRI,Bx,By,Bz, 'facecolor','none');
end
