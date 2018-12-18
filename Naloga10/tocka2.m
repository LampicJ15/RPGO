%10.naloga
%2.toèka
B = [1 0; 1 4; -3 2;-3 -2; 1 -4; 1 0];
w = [1 1/5 1/5 1/5 1/5 1];
t = [0:0.01:1];

%narišemo navadno krivuljo
plotrbezier(B,w,t);

%dvignjemo stopnjo za 1
[B1,w1] =rbezierelv(B,w);

plotrbezier(B1,w1,t);

%dvignjemo stopnjo za 2
[B2,w2] =rbezierelv(B1,w1);

plotrbezier(B2,w2,t);