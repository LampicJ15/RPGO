%Ternary Six-Point interpolating scheme 
%vs. Binary Four-point interpolating scheme

%set axis to select points
clf;
axis([0 10 0 10]);

%define open polygon
[xs,ys] = getpts;
polygon = [xs,ys];
polygon6 = [xs,ys];
polygon4 = [xs,ys];

%plot open polygon
plot(polygon(:,1),polygon(:,2), '-o');
axis([0 10 0 10]);
hold on;

%define weights
%w = 0.005;  %C^0 continuity 
%w = 0.0105; %C^1 continuity 
w = 0.0116; %C^2 continuity 

n1 = -11/81 + 13*w;
n2 = 13/27 -51*w;
n3 = -2/27 + 74*w;
n4 = 74/81 -46*w;
n5 = -5/27 + 9*w;
n6 = w;


%define the number of steps of the subdivision
steps = 5;
pause;

%6-point interpolating scheme
for i =1:steps
    
    %new polygon
    s = size(polygon6,1);
    
    %temporary polygon
    
    
    tmp_polygon = [2*polygon6(1,:)- polygon6(3,:);
                   2*polygon6(1,:)-polygon6(2,:);
                   polygon6;
                   2*polygon6(end,:)- polygon6(end-1,:);
                   2*polygon6(end,:)- polygon6(end-2,:);
                   2*polygon6(end,:)- polygon6(end-3,:);
                   ];
     %new poylgon
     new_polygon = zeros(3*s,2);
     
     for j=0:(s-1)
        %first rule
        new_polygon(3*j+1,:)= tmp_polygon(j+3,:);
        
        %second rule
        new_polygon(3*j+2,:) = n1 * tmp_polygon(j+1,:) + n2 * tmp_polygon(j+2,:) + n3 * tmp_polygon(j+3,:) + n4* tmp_polygon(j+4,:) + n5 * tmp_polygon(j+5,:) + n6 *tmp_polygon(j+6,:);
        
        %third rule
        new_polygon(3*j+3,:) = n6 * tmp_polygon(j+1,:) + n5 * tmp_polygon(j+2,:) + n4 * tmp_polygon(j+3,:) + n3* tmp_polygon(j+4,:) + n2 * tmp_polygon(j+5,:) + n1 *tmp_polygon(j+6,:);
        
     end
    
    polygon6 = new_polygon(1:end-2,:);
    
end

%plot both the control polygon and polygon6
hold off;
plot(polygon(:,1),polygon(:,2));
axis([0 10 0 10]);
hold on;
plot(polygon6(:,1),polygon6(:,2));
axis([0 10 0 10]);
hold on;

%4-point interpolating scheme

pause;

for i =1:steps
    
    %new polygon
    s = size(polygon4,1);
    
    %temporary polygon
    
    
    tmp_polygon = [2*polygon4(1,:)-polygon4(2,:);
                   polygon4;
                   2*polygon4(end,:)- polygon4(end-1,:);
                   2*polygon4(end,:)- polygon4(end-2,:);
                   ];
     %new poylgon
     new_polygon = zeros(2*s,2);
     
     for j=0:(s-1)
        %first rule
        new_polygon(2*j+1,:)= tmp_polygon(j+2,:);
        
        %second rule
        new_polygon(2*j+2,:) = -1/16*tmp_polygon(j+1,:) +  9/16*tmp_polygon(j+2,:) + 9/16* tmp_polygon(j+3,:) -1/16*tmp_polygon(j+4,:);
       
     end
    
    polygon4 = new_polygon(1:end-1,:);
    plot(polygon4(:,1),polygon4(:,2),'-o');
    axis([0 10 0 10]);
    hold on;
    pause;
    
end

hold off;
plot(polygon(:,1),polygon(:,2),'-o');
axis([0 10 0 10]);
hold on;
p1 = plot(polygon6(:,1),polygon6(:,2));
axis([0 10 0 10]);
hold on;
p2 = plot(polygon4(:,1),polygon4(:,2));
axis([0 10 0 10]);
hold off;
legend('Kontrolni poligon','6-point','4-point');

%line width
%set(p1,'linewidth',2);
%set(p2,'linewidth',2);
