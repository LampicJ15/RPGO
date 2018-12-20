function [bx,by,bz] = bezier2(Bx ,By ,Bz,u,v)
% Opis:
%   bezier2  vrne  toèke  na  Bezierjevi  ploskvi  iz  tenzorskega
%   produkta
%
% Definicija:
%   [bx,by,bz] = bezier2(Bx,By ,Bz,u,v)
%
% Vhodni  podatki:
%   Bx , By, Bz    matrike  velikosti n+1 x m+1, ki  doloèajo
%   koordinate  kontrolnih  toèk ,
%   u, v   vrstici  dolžine M in N, ki  predstavljata
%   parametre v smereh u in v.
%
% Izhodni  podatki:
%   bx , by, bz    matrike  velikosti N x M, ki  predstavljajo
%   toèke  na  Bezierjevi  ploskvi:
%   [bx(J,I) by(J,I) bz(J,I)] je  toèka  pri
%   parametrih u(I) in v(J).
m = size(Bx,2)-1;

U = length(u);
V = length(v);

bx = zeros(V,U);
by = zeros(V,U);
bz = zeros(V,U);
for vi = 1:V;
    temporary_x = zeros(1,m+1);
    temporary_y = zeros(1,m+1);
    temporary_z = zeros(1,m+1);
    for i=1:m+1
       temporary_x(i)= bezier(Bx(:,i),v(vi));
       temporary_y(i)= bezier(By(:,i),v(vi));
       temporary_z(i)= bezier(Bz(:,i),v(vi));
    end
    for ui=1:U;
        bx(vi,ui) = bezier(temporary_x',u(ui));
        by(vi,ui) = bezier(temporary_y',u(ui));
        bz(vi,ui) = bezier(temporary_z',u(ui));
    end
end

       
       

