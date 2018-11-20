function db = bezierCtrlDer(B,r)
% Opis :
%Bezier Control points of Derivative
% bezierder vrne tocke na krivulji , ki predstavlja odvod
% dane Bezierjeve krivulje
%%Definicija :
% db = bezierCtrlDer(B,r)
%%Vhodni podatki :
% B matrika kontrolnih tock Bezierjeve krivulje , v
% kateri vsaka vrstica predstavlja eno kontrolno
% tocko ,
% r stopnja odvoda , ki ga racunamo ,
%%Izhodni podatek :
% db matrika , v kateri vsaka vrstica predstavlja kontrolno
%toèko r-tega odvoda bezierjeve krivluje

%velikost
[n,d] = size(B);
%stopnja
n = n-1;
%dimenzija
db = factorial(n)/factorial(n-r)*diff(B,r);
end
