b = 157/101;

Bx = [0 2 5 7;
    1 3 6 9;
    0 3 5 8];

By = [b 3 0 2;
    5 6 4 6;
    8 9 7 9];

Bz = [b 3 3 0;
    0 b 2 6;
    1 4 5 7];


b00 = [0 b b];

[sx,sy,sz] = bezier2aux(Bx,By,Bz,0.75,0.25);
s = [sx,sy,sz];
norm(b00-s)

bj = zeros(3,3);
for j=1:3
    bx = Bx(j,:);
    by = By(j,:);
    bz = Bz(j,:);
    tmpB = [bx' by' bz'];
    bj(j,:)=bezier(tmpB,0.25);
end

norm(bj(2,:)-b00)

%p bilinerani interpolant
vals = [];
b00 = [0 b b];
b30 = [7 2 0];
b02 = [0 8 1];
b32 = [8 9 7];

for k=0:10
    for l = 0:10
        [tx,ty,tz] = bezier2(Bx,By,Bz,l/10,k/10);
        tmp = [tx,ty,tz];
        p = interP(b00,b30,b02,b32,k/10,l/10);
        vals = [vals, norm(tmp-p)];
    end
end

max(vals)


U = [0 0 0 0.5 0.5 0.5 1 1 1];
V = [0 0.5 1 0 0.5 1 0 0.5 1];

P = zeros(9,3);

for i = 1:9
    [tx,ty,tz] = bezier2(Bx,By,Bz,V(i),U(i));
        tmp = [tx,ty,tz];
        P(i,:)=tmp;
end

[Qcx,Qcy,Qcz] = lsqbezier2 (1 ,1 ,P ,U ,V);
b00 = [Qcx(1,1),Qcy(1,1),Qcz(1,1)];
b30 = [Qcx(1,2),Qcy(1,2),Qcz(1,2)];
b02 = [Qcx(2,1),Qcy(2,1),Qcz(2,1)];
b32 = [Qcx(2,2),Qcy(2,2),Qcz(2,2)];

vals = [];
for k=0:10
    for l = 0:10
        [tx,ty,tz] = bezier2(Bx,By,Bz,l/10,k/10);
        tmp = [tx,ty,tz];
        p = interP(b00,b30,b02,b32,k/10,l/10);
        vals = [vals, norm(tmp-p)];
    end
end
 max(vals)
max(vals)