%2.toèka

B = [0 0; 2 6; 3 0; 5 4; 7 1; 5 5; 10 6];
B3 = bezierelv (B ,3);
B10 = bezierelv (B ,10) ;
B30 = bezierelv (B ,30) ;

t = 0:0.01:1;

plotbezier(B30,t);
