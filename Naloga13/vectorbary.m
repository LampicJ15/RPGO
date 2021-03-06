function u = vectorbary(vektor,T)
%Funkcija vectorbary vrne baricentrične koorinate glede na trikotnik T,
%(podan kot 3 x 2 matrika [x1 y1; x2 y2; x3 y3])
%vekotrja, ki ga dobimo ko odštejemo točki (x,y) in (0,0)
%baricentrične koordinate vektorja se vedno seštejejo v 0

%baricentrične koordinate točke (x,y)
bar1 = pointbary(vektor,T);
%baricentrične koordinate točke (0,0)
bar2 = pointbary([0 0],T);
%baricentrične koordinate vektorja
u = bar1 - bar2;
end


