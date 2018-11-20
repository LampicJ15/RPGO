%3.naloga

b = [-2/3 -4/5;1/3 1/5; 0 0; -1/3 1/5;2/3 -4/5];

%Bezierjeva krivulja s kontrolnimi toèkami b
t =[0:0.001:1];
plotbezier(b,t);

%1. odvod Bezierjeve krivulje 
b1 = bezierCtrlDer(b,1);
plotbezier(b1,t);

%2.odvod
b2 = bezierCtrlDer(b,2);
plotbezier(b2,t);
