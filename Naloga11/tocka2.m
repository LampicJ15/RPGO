%2.tocka

%testni primer
Bx = [0 3 5 6; 1 4 5 7; 0 3 5 6];
By = [-1 -2 -1 -2; 1 2 1 2; 5 5 6 5];
Bz =[-3 -2 0 -5; 3 6 3 2; -1 4 -2 8];

u = linspace(0,1,10);
v = linspace(0,1,5);

[bx by bz] = bezier2(Bx,By,Bz,u,v);

beziersurf(Bx,By,Bz,u,v);