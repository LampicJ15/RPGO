%3.tocka

w = [0.5 0.7 0.8 1 0.6];
b = [0 0; 2 3;5 0; 3 -1; 2 -1];

q = [];

for i=1:(length(w)-1)
    tmp = w(i)/(w(i)+w(i+1))*b(i,:)+ w(i+1)/(w(i)+w(i+1))*b(i+1,:);
    q = [q; tmp];
end

%narišemo graf
scatter(q(:,1),q(:,2)); hold on;
t = 0:0.001:1;
plotrbezier(b,w,t);