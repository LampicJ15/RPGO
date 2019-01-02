%1.naloga

a = 131/101;

b = [0 a; 2 0; 1 -3; -2 -4; 0 3];
w = [1 3 0.5 a 1];

[b04,BS,W] = rdecasteljau(b,w,0.4);
norm(b(1,:)- b04,2)

%farinova tocka
q = [];

for i=1:(length(w)-1)
    tmp = w(i)/(w(i)+w(i+1))*b(i,:)+ w(i+1)/(w(i)+w(i+1))*b(i+1,:);
    q = [q; tmp];
end

q1 = q(2,:);
%razdalja farinove tocke 
norm(q1-BS{2,3})


%odvod
w03 = W(1,4);
w13=W(2,4);
w04 = W(1,5);

b13 = BS{2,4};
b03 = BS{1,4};

dbt = 4 * (w03*w13)/(w04^2)*(b13-b03);
norm(dbt)

%4 krat dvignemo stopnjo
B1 = b;
W1 = w;
for i = 1:4
    [B1,W1] = rbezierelv (B1 , W1 );
end

%dolzina kontrolnega poligona
len = 0;
for i = 1:8
    len = len + (norm(B1(i+1,:)-B1(i,:)) );
end
