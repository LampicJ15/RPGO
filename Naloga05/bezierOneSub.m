function BS = bezierOneSub (B,t)
% Opis : beziersub izvede subdivizijo Bezierjeve krivulje
%%Definicija :
% BS = beziersub (B,t)
%%Vhodni podatki :
% B matrika kontrolnih tock Bezierjeve krivulje , v
% kateri vsaka vrstica predstavlja eno kontrolno
% tocko ,
% t parameter subdivizije Bezierjeve krivulje
%%Izhodni podatek :
% BS celica , ki vsebuje kontrolne tocke dveh krivulj , ki
% jih dobimo s subdivizijo prvotne Bezierjeve krivulje

%velikost in deimznija toèk
[n,d] = size(B);

%kontrolne toèke subidivizij
BS = cell(2,1);

%decastealjaujeva shema
D = decasteljau(B,t);

%kontrolne toèke leve subdivizije
bL = zeros(n,d);

for i=1:n
    bL(i,:) = D{1,i};
end

%kontrolne toèke desne subdivizije
bR = zeros(n,d);


for i=1:n
    bR(i,:) = D{n+1-i,i};
end

BS{1} = bL;
BS{2} = bR;
end