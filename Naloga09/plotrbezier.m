function plotrbezier(B,w,t)
%nari�emo poligon
plot(B(:,1),B(:,2),'-o');
axis equal
hold on

%nari�emo krivuljo
%dobljenje to�ke na krivulji
D = rbezier(B,w,t);

plot(D(:,1),D(:,2));
hold on

%Farinove to�ke
[n,d]=size(B);
q= zeros(n-1,d);

for i=1:(n-1)
    q(i,:) = w(i)/(w(i)+w(i+1)) * B(i,:) + w(i+1)/(w(i)+w(i+1))*B(i+1,:);
end

%nari�emo farinove to�ke
scatter(q(:,1),q(:,2),'filled');
hold off

end

