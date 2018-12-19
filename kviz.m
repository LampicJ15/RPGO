%KVIZ

%2.naloga
b = 4+41/101;

B = [-1 0 1; 5 0 -2; 3 6 b; 3 3 -5];

%odvod
%a.
norma = norm(bezierder(B,1,1/4));

%b.
p1 = bezierCtrlDer(B,1);
norm(p1(3,:))

%c.)torzija
p1 = bezierder(B,1,1/4);
p2 = bezierder(B,2,1/4);
p3 = bezierder(B,3,1/4);

torzija = (cross(p1,p2)*p3')/norm(cross(p1,p2))^2