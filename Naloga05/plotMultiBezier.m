function plotMultiBezier(cell,t)
% Opis :
% plotbezier nari�e Bezierjevo ve� bezierjevih krivulj za dane kontrolne
% to�ke in seznam parametrov
%
% Definicija :
% plotbezier (B,t)
%
% Vhodni podatki :
%celica cell dimenzije 1xm, torej vsebuje m matrik B
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% to�ke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dol�ine k, pri katerih ra�unamo
% vrednost Bezierjeve krivulje
for i=1:length(cell)
    plotbezier(cell{i},t);
    hold on;
end
end

