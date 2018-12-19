function b = blossom(Bx,By,Bz, U)
% Opis :
% Blossom izraèuna trikotniski razcvet
%
% Definicija :
% b = blossom(Bx, By, Bz, U)
%
% Vhodni podatki:
% Bx, By, Bz matrike velikosti n+1 x n+1 , ki predstavlja
% koeficiente polinoma dveh spremenljivk stopnje n v
% Bezierjevi obliki ( element matrike na mestu (i,j),
% j <= n+2 -i, doloèa koeficient polinoma z indeksom
% (n+2 -i-j, j -1 , i -1) ),
% U matrika velikosti n x 3 , v kateri vrstice
% predstavljavo baricentriène koordinate toèk glede
% na domenski trikotnik , za katere izvajamo razcvet
% polinoma
%
% Izhodni podatek :
% tocka b, ki jo dobimo pri razcvetu

bx = blossom3(Bx,U);
by = blossom3(By,U);
bz = blossom3(Bz,U);

b = [bx by bz];
end

