function beziersurf(Bx,By,Bz,u,v)
%nariše kontrolni poligon in ploskev

%vrednosti na ploskvi
[Px, Py,Pz] = bezier2(Bx,By,Bz,u,v);
clf;
surf(Px,Py,Pz);
hold on;
mesh(Bx,By,Bz, 'facecolor','none');

end