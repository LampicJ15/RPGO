function b = dbezier3(Bx,By,Bz, r, d1,s,d2, u)
% Opis :
% funkcija dbezier3 vrne vrednost r-tega dovoda v smeri vektorja d (z baricentricnimi koordinatami)
%bezierjeve krpe v tocki u (ima baricentricne koordinate).
%Vhodni podatki
%kontrolna mreza tock Bx,By,Bz velikosti (n+1)*(n+1)
%parameter r, ki doloca stopnjo odvoda
%d smerni vektor podan z baricentricnimi koordinatami
%u - baricentricne koordinate tocke v kateri racunamo odvod
%Izhodni podatek:
%tocka b, vrednost odvoda pri danih parametrih

n = size(Bx,1)-1;
U = zeros(n,3);
U(1:r,:)= repmat(d,r,1);
U(r+1:n,:)= repmat(u,n-r,1);

dx = blossom3(Bx,U);
dy = blossom3(By,U);
dz = blossom3(Bz,U);
b = (factorial(n)/factorial(n-r))*[dx dy dz];

end
