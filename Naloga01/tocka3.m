%3.naloga
%narišimo Bernsteinove bazne polinome stopnje 5

%x os
x = 0:0.01:1;
%bernsteinovi bazni polinomi zloženi v diagonalno matriko
b = diag([1 1 1 1 1 1]);

%graf
for i=1:6
    b(i,:)=bernstein2power(b(i,:));
    plot(x,polyval(b(i,:),x))
    hold on
end