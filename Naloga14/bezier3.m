function b = bezier3 ( Bx , By , Bz , U )
% Opis :
% bezier3 izra�una to�ke na trikotni Bezierjevi ploskvi
%
% Definicija :
% b = bezier3 (Bx ,By ,Bz ,U)
%
% Vhodni podatki :
% Bx , By , Bz matrike velikosti n+1 x n+1 , ki dolo�ajo
% koordinate kontrolnih to�k Bezierjeve krpe
% (element posamezne matrike na mestu (i,j),
% j <= n+2 -i, dolo�a koordinato kontrolne
% to�ke z indeksom (n+2 -i-j, j -1 , i -1)),
% U matrika , v kateri vrstice predstavljajo
% baricentri�ne koordinate to�k glede na
% domenski trikotnik , za katere ra�unamo
% to�ke na Bezierjevi krpi
%
% Izhodni podatek :
% b matrika , v kateri vsaka vrstica predstavlja
% to�ko na Bezierjevi krpi pri istole�nih
% parametrih iz matrike U

m = size(U,1);
b = zeros(m,3);

for i = 1:m
    b(i,:)= decasteljau3(Bx,By,Bz, U(i));
end

end