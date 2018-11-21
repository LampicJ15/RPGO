%4.naloga
k= 6;
fi = pi/k; %kot doloèa krožni lok od (-fi,fi)
t = 0:0.001:1;
rotM = [cos(2*fi) -sin(2*fi); sin(2*fi) cos(2*fi)]; %rotacijska matrika

 
%1.toèka- doloèimo Bezierjevo krivuljo stopnje n = 2, ki v roboih
%interpolira lrožnico ter smer njenih tangent
b0 = [cos(fi),-sin(fi)];
b2 = [cos(fi),sin(fi)];
b1 = [1/cos(fi),0];
 
B=[b0; b1; b2];

%B cell
Bc = cell(1,k);

for i=1:k
    Bc{i} = B;
    B = B*rotM;
end

%narišemo krivuljo
plotMultiBezier(Bc,t);

%.2toèka %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c0 = b0;
c3 = b2;
c1 = c0 + 1/3*[sin(fi),cos(fi)];
c2 = c3 - 1/3 *[-sin(fi),cos(fi)];


C = [c0; c1; c2; c3];

%C cell
Cc = cell(1,k);

for i=1:k
    Cc{i} = C;
    C = C*rotM;
end

%narišemo krivuljo
plotMultiBezier(Cc,t);
 
 %3.toèka %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k0=b0;
k3 = b2;
 
k1 = 1/3* [4-cos(fi),4*cot(fi)- 4/sin(fi)+sin(fi)];
k2 = 1/3*[4-cos(fi),-4*cot(fi)+4/sin(fi)-sin(fi)];

K = [k0; k1; k2; k3];

%K cell
Kc = cell(1,k);

for i=1:k
    Kc{i} = K;
    K = K*rotM;
end

plotMultiBezier(Kc,t);

%Izraèunajmo napake
B1 = bezier(B,t);
C2 = bezier(C,t);
K3 = bezier(K,t);

napaka1 = max(abs(1- (B1(:,1).^2 + B1(:,2).^2 ).^(1/2) ));
napaka2 = max(abs(1- (C2(:,1).^2 + C2(:,2).^2 ).^(1/2) ));
napaka3 = max(abs(1- (K3(:,1).^2 + K3(:,2).^2 ).^(1/2) ));
 