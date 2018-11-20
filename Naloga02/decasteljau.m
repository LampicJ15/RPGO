function D = decasteljau (b,t)
% Opis :
% decasteljau vrne shemo de Casteljaujevega postopka za dan
% seznam koordinat b pri danem parametru t
%%Definicija :
% D = decasteljau (b,t)
%%Vhodna podatka :
% b seznam koordinat kontrolnih tock Bezierjeve krivulje
% stopnje n,
% t parameter , pri katerem racunamo koordinato
% Bezierjeve krivulje
%%Izhodni podatek :
% D tabela velikosti n+1 x n+1, ki predstavlja de
% Casteljaujevo shemo za koordinate b pri parametru t
% ( element na mestu (1,n +1) je koordinata Bezierjeve
% krivulje pri parametru t, elementi na mestih (i,j)
% za i > n-j+2 so NaN )

%seznam toèk b je podan kot matrika n x dim
%n število toèk
%d pa poljubna dimenzija

[n,d]= size(b);

%de casteljaujeva shema
D = cell(n,n);

%prvi stolpec v D so zaèetne toèke b
for i=1:n
    D{i,1}=b(i,:);
end

for j = 2:n
    for i=1:(n-j+1)
        D{i,j} = (1-t)*D{i,j-1} + t*D{i+1,j-1};
    end
    for i=(n-j+2):n
        D{i,j}=nan;
    end
    
end
end