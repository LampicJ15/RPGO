%2.toèka

%kontrolne toèke
B = [0 0; 2 3; 4 2; 5 -1];
c = 0.5;
t = 0:0.01:1;

%a.)
k1 = 1;
sub1 = beziersub(B,c,k1);
plotMultiBezier(sub1,t);
hold on

%b.)
k2 = 2;
sub2 = beziersub(B,c,k2);
plotMultiBezier(sub2,t);
hold on

%c.) 
k3 = 3;
sub3 = beziersub(B,c,k3);
plotMultiBezier(sub3,t);

