function b = bezier3 ( Bx , By , Bz , U )
% Opis :
% bezier3 izraèuna toèke na trikotni Bezierjevi ploskvi
%
% Definicija :
% b = bezier3 (Bx ,By ,Bz ,U)
%
% Vhodni podatki :
% Bx , By , Bz matrike velikosti n+1 x n+1 , ki doloèajo
% koordinate kontrolnih toèk Bezierjeve krpe
% (element posamezne matrike na mestu (i,j),
% j <= n+2 -i, doloèa koordinato kontrolne
% toèke z indeksom (n+2 -i-j, j -1 , i -1)),
% U matrika , v kateri vrstice predstavljajo
% baricentriène koordinate toèk glede na
% domenski trikotnik , za katere raèunamo
% toèke na Bezierjevi krpi
%
% Izhodni podatek :
% b matrika , v kateri vsaka vrstica predstavlja
% toèko na Bezierjevi krpi pri istoležnih
% parametrih iz matrike U

m = size(U,1);
b = zeros(m,3);

for i = 1:m
    b(i,:)= decasteljau3(Bx,By,Bz, U(i,:));
end

end