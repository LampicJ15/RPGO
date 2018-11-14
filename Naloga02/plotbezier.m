function plotbezier (B,t)
% Opis :
% plotbezier nariše Bezierjevo krivuljo za dane kontrolne
% tocke in seznam parametrov
%%Definicija :
% plotbezier (B,t)
%%Vhodni podatki :
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% tocke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dolžine k, pri katerih racunamo
% vrednost Bezierjeve krivulje

%narišemo poligon kontrolnih toèk 
plot(B(:,1),B(:,2),'-o');
hold on

%narišemo krivuljo
%dobljenje toèke na krivulji
D = bezier(B,t);

plot(D(:,1),D(:,2));
hold off
end

