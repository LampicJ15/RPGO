function u = alphaparam (P , a )
% Opis :
% alphaparam sestavi alfa parametrizacijo oziroma delitev
% domene na podlagi podanih toèk
%
% Definicija :
% u = alphaparam (P, alpha )
%
% Vhodna podatka :
% P matrika z m+1 vrsticami , v kateri vsaka vrstica
% predstavlja eno toèko ,
% a parameter , ki doloèa alfa parametrizacijo
%
% Izhodni podatek :
% u seznam parametrov delitve , ki so doloèeni rekurzivno
% tako , da se trenutnemu parametru iz seznama u
% prišteje z a potencirana norma razlike zaporednih
% toèk iz seznama P

%velikost
[n,dim] = size(P);
m = n-1;

%vekotr parametrov delitve u
u = zeros(1,m+1);

for i=1:m
    u(i+1)=u(i)+ (pdist(P(i:i+1, :)))^a;
end

end
