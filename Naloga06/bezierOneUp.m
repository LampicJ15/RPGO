function Be = bezierOneUp(B)
% Opis :
% bezierelv izvede visanje stopnje dane Bezierjeve krivulje
%%Definicija :
% Be = bezierelv (B,k)
%%Vhodna podatka :
% B matrika velikosti (n +1) x d, v kateri vsaka vrstica
% predstavlja d- dimenzionalno kontrolno tocko
% Bezierjeve krivulje stopnje n,
% dane Bezierjeve krivulje
%%Izhodni podatek :
% Be matrika velikosti (n+2) x d, v kateri vsaka
% vrstica predstavlja d- dimenzionalno kontrolno tocko
% Bezierjeve krvulje stopnje n+1, ki ustreza dani
% Bezierjevi krivulji

%velikost vektorja prvotnih kontrolnih toèk
shape = size(B);

%dimenzija
dim =shape(2);

%stopnja 
n = shape(1) -1;

Be = zeros(n+2, dim);

Be(1,:) = B(1,:);

for i=2:n+1
    Be(i,:)= (1-(i-1)/(n+1))*B(i,:) + (i-1)/(n+1)*B(i-1,:);
end

Be(n+2,:) = B(n+1,:);

end