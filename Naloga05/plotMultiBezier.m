function plotMultiBezier(cell,t)
% Opis :
% plotbezier nariše Bezierjevo veè bezierjevih krivulj za dane kontrolne
% toèke in seznam parametrov
%
% Definicija :
% plotbezier (B,t)
%
% Vhodni podatki :
%celica cell dimenzije 1xm, torej vsebuje m matrik B
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% toèke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dolžine k, pri katerih raèunamo
% vrednost Bezierjeve krivulje
for i=1:length(cell)
    plotbezier(cell{i},t);
    hold on;
end
end

