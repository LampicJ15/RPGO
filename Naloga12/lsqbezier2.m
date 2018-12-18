function [ Bx , By , Bz ] = lsqbezier2 (m ,n ,P ,u ,v )
% Opis :
% lsqbezier2 vrne kontrolne toèke Bezierjeve ploskve , ki
% se po metodi najmanjših kvadratov najbolje prilega danim
% podatkom
%
% Definicija :
% [Bx ,By ,Bz] = lsqbezier2 (m,n,P,u,v)
%
% Vhodni podatki :
% m,n parametra , ki doloèata stopnji Bezierjeve
% ploskve iz tenzorskega produkta ,
% P matrika , ki v vrsticah vsebuje toèke v prostoru ,
% za katere želimo , da jih Bezierjeva ploskev
% èimbolje aproksimira ,
% u,v seznama parametrov , ki doloèata , kateri toèki v
% domeni pripada posamezna toèka iz P
%
% Izhodni podatki :
% Bx ,By ,Bz matrike velikosti n+1 x m+1 , ki predstavljajo
% kontrolne toèke Bezierjeve ploskve iz
% tenzorskega produkta , ki se po metodi najmanjših
% kvadratov najbolje prilega podatkom

L = length(v);
A = zeros(L,(m+1)*(n+1));

for k = 1:L
  for i=1:m+1
    Bi = zeros(m+1,1);
    Bi(i) = 1;
    for j=1:n+1
      Bj = zeros(n+1,1);
      Bj(j) = 1;
      A(k,j+(i-1)*(n+1)) = bezier(Bi,u(k))*bezier(Bj,v(k));  
    end
  end
  
end

Bx = A\P(:,1);
By = A\P(:,2);
Bz = A\P(:,3);

Bx = reshape(Bx,[n+1,m+1]);
By = reshape(By,[n+1,m+1]);
Bz = reshape(Bz,[n+1,m+1]);

end

