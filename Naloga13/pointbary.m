function u = pointbary(x,y,T)
%Funkcija pointbary kartezi�ne koordinate (x,y)
%prevtori v baricentri�ne koordinate glede na trikotnik T,
%ki je podan kot 3 x 2 matrika [x1 y1; x2 y2; x3 y3]

A = [1 1 1; T(1,1) T(2,1) T(3,1); T(1,2) T(2,2) T(3,2)];
B = [1 x y]';

%baricentri�ne kooridnate
u = (linsolve(A,B))';

end
