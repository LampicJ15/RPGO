d = 58/101;

D = zeros(8,2);

j = -1
for i=1:8
    tj = (2*pi)*(j+1)/7;
    D(i,:)=[16*(sin(tj))^3, 13*cos(tj)-5*cos(2*tj)-2*cos(3*tj)-cos(4*tj)];
    j=j+1;
end

%parametrizacija
u = alphaparam(D(2:7,:),d);
mini = min(diff(u));

%
B = beziercubspline(u,D);
sticna = B{2};
sticna = sticna(end,:);

razdalja = norm(D(end,:)-sticna);

%
t = u(6)/2;

v = (t-u(3))/(u(4)-u(3));
Br = B{3};

val = bezier(Br,[v])

razdalja2 = norm(D(end,:)-val);
