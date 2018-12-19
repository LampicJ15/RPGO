%3.tocka

%koeficienti polinoma dveh spremenljivk
B = [2 5 -1 0;
     1 3 -4 nan;
     0 0 nan nan ;
     1 nan nan nan];
 
 %trikotnik T
 T = [0 0; 5 1; 3 3];
 
 %tocke za izvrednotenje
 T1 = [0 0];
 T2 = [1 1];
 T3 = [4 2];
 
 %baricentricne koordinate tock
 bar1 = pointbary(T1,T); %(1.000000, 0.000000, 0.000000)
 bar2 = pointbary(T2,T); %(0.666667, 0.000000, 0.333333)
 bar3 = pointbary(T3,T); %(0.000000, 0.500000, 0.500000)
 
 %vrednost polinoma
 val1 = blossom3(B,[bar1;bar1;bar1]); %2.000000
 val2 = blossom3(B,[bar2;bar2;bar2]); %1.074074
 val3 = blossom3(B,[bar3;bar3;bar3]); %-1.375000

 %odvodi v smeri x in y
 x = vectorbary([1 0], T); %(-0.166667, 0.250000, -0.083333)
 y = vectorbary([0 1], T); %(-0.166667, -0.250000, 0.416667)
 
 %odvod v smeri x
 n = 3;
 Dx1 = factorial(n)/factorial(n-1)*blossom3(B,[x;bar1;bar1]);
 Dx2 = factorial(n)/factorial(n-1)*blossom3(B,[x;bar2;bar2]);
 Dx3 = factorial(n)/factorial(n-1)*blossom3(B,[x;bar3;bar3]);
 
%odvod v smeri y
 Dy1 = factorial(n)/factorial(n-1)*blossom3(B,[y;bar1;bar1]);
 Dy2 = factorial(n)/factorial(n-1)*blossom3(B,[y;bar2;bar2]);
 
 
%enostavnej izracun
dbezier3(B,B,B,1,x,0,y,bar2);