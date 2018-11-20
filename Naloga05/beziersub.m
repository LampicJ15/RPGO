function BS = beziersub (B,t,k)
% Opis : beziersub izvede k subdivizij Bezierjeve krivulje
%%Definicija :
% BS = beziersub (B,t)
%%Vhodni podatki :
% B matrika kontrolnih tock Bezierjeve krivulje , v
% kateri vsaka vrstica predstavlja eno kontrolno
% tocko ,
% t parameter subdivizije Bezierjeve krivulje
%%Izhodni podatek :
% BS celica , ki vsebuje kontrolne tocke 2^k krivulj , ki
% jih dobimo s k-timi subdivizijami prvotne Bezierjeve krivulje

%subdivzijska shema
SD = cell(k+1, 2^k);

SD{1,1} = B;
for i=2:k+1
    l=1;
    for j=1:2^(i-1)
        cel =bezierOneSub(SD{i-1,j},t);
        SD{i,l}=cel{1};
        SD{i,l+1} = cel{2};
        l=l+2;
    end
end

BS=cell(1,2^k);
for i=1:2^k
    BS{i} = SD{end,i};
end

end