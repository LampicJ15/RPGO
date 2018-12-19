%KVIZ 3
c = 3 + 54/101;

p0 = [1 c];
pd0 = [2,5];

p1 = [3 2];
pd1 = [c 3];

b0 = p0;
b1 = b0 + 1/3 * pd0;

b3 = p1;
b2 = b3 - 1/3*pd1;

B = [b0; b1; b2; b3];

%a.) 
norm(b1-b2)

%.b)

cel = bezierOneSub(B,1/2);
K1 = cel{1}; %prva krivulja
K2 = cel{2};

%dolzine poligonov
dolzina1 = norm(K1(2,:)-K1(1,:)) + norm(K1(3,:)-K1(2,:)) +norm(K1(4,:)-K1(3,:));
dolzina2 = norm(K2(2,:)-K2(1,:)) + norm(K2(3,:)-K2(2,:)) +norm(K2(4,:)-K2(3,:));

dolzina1/dolzina2

%krivulja stopnje 7
B7 = bezierelv(B,4);

dolzina3 = 0;
for i=2:8
    dolzina3 = dolzina3 + norm(B7(i,:)-B7(i-1,:));
end

