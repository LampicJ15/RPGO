%3.tocka

%koeficienti polinoma dveh spremenljivk
B = [2 1 -1 0;
     5 3 -4 nan;
     0 0 nan nan ;
     1 nan nan nan];
 
 %trikotnik T
 T = [0 0; 5 1; 3 3];
 
 %tocke za izvrednostenje
 T1 = [0 0];
 T2 = [1 1];
 T3 = [4 2];
 
 %baricentricne koordinate tock
 bar1 = pointbary(T1,T);
 bar2 = pointbary(T2,T);
 bar3 = pointbary(T3,T);
 
 %vrednost polinoma
 val1 = blossom3(B,[bar1;bar1;bar1]);
 val2 = blossom3(B,[bar2;bar2;bar2]);
 val3 = blossom3(B,[bar3;bar3;bar3]);

 %odvodi v smeri x in y
 x = vectorbary([1 0], T);
 y = vectorbary([0 1], T);
 
 %odvod v smeri x
 Dx1 = factorial(n)/factorial(n-1)*blossom3(B,[x;bar1;bar1]);
 Dx2 = factorial(n)/factorial(n-1)*blossom3(B,[x;bar2;bar2]);
 Dx3 = factorial(n)/factorial(n-1)*blossom3(B,[x;bar3;bar3]);
 
%odvod v smeri y
 Dy1 = factorial(n)/factorial(n-1)*blossom3(B,[y;bar1;bar1]);
 Dy2 = factorial(n)/factorial(n-1)*blossom3(B,[y;bar2;bar2]);