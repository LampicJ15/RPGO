function u = vectorbary(x,y,T)
%Funkcija vectorbary vrne baricentri�ne koorinate glede na trikotnik T,
%(podan kot 3 x 2 matrika [x1 y1; x2 y2; x3 y3])
%vekotrja, ki ga dobimo ko od�tejemo to�ki (x,y) in (0,0)
%baricentri�ne koordinate vektorja se vedno se�tejejo v 0

%baricentri�ne koordinate to�ke (x,y)
bar1 = pointbary(x,y,T);
%baricentri�ne koordinate to�ke (0,0)
bar2 = pointbary(0,0,T);
%baricentri�ne koordinate vektorja
u = bar1 - bar2;
end

