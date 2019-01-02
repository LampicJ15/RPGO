c = 55/201;

Bx = [0 2 6 8;
    1 3 7 nan;
    2 5 nan nan;
    4 nan nan nan];

By = [0 1 0 -1;
    2 2 3 nan;
    4 3 nan nan;
    5 nan nan nan];

Bz = [-2 1 -2 0;
    4 -2 3 nan;
    0 5 nan nan;
    3 nan nan nan];

T = [0 0; 1 0; 0 1];

T0 = [0.25 c];

bar = pointbary(T0,T)

p0 = decasteljau3(Bx,By,Bz,bar);
norm(p0)

%oddaljenosti
 odd = [];
 
 for i = 0:5
     for j=0:(5-i)
        tmpbar = [(5-i-j)/5, i/5, j/5]
        p = decasteljau3(Bx,By,Bz,tmpbar);
        odd = [odd, norm(p-p0)];
     end
 end
 
sum(odd)/length(odd)

%dolzina vektorja 
 x = vectorbary([1 -1], T); 
 
 %odvod
 dp = dbezier3(Bx,By,Bz, 1, x,0,[], bar);