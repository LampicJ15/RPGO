function b = decasteljau3 (Bx,By,Bz,U)
% Opis :
% decasteljauizraèuna razcvet polinoma dveh spremenljivk
%
% Definicija :
% b = blossom3 (B,U)
%
% Vhodna podatka :
% Bx, By, Bz matrika velikosti n+1 x n+1 , ki predstavlja
% koeficiente polinoma dveh spremenljivk stopnje n v
% Bezierjevi obliki ( element matrike na mestu (i,j),
% j <= n+2 -i, doloèa koeficient polinoma z indeksom
% (n+2 -i-j, j -1 , i -1) ),
% U matrika velikosti 1 x 3 , ki predstavljava baricentriène koordinate toèk glede
% na domenski trikotnik 
%
% Izhodni podatek :
% tocko b, ki je vrednost razcveta polinoma , doloèenega z matrikami Bx, By, Bz
% v toèkah , doloèenih z matriko U

%stopnja
n = size(Bx,1)-1;

%naredimo seznam baricentricnih koordinat
bar = repmat(U,n,1);

%za vsako koordinato b naredimo blossom3
bx = blossom3(Bx,bar);
by = blossom3(By,bar);
bz = blossom3(Bz,bar);

b = [bx, by, bz];
end