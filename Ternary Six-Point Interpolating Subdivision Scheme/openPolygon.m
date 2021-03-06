%Ternary Six-Point interpolating scheme for open polygon

%set axis to select points
clf;
axis([0 10 0 10]);

%define open polygon
[xs,ys] = getpts;
polygon = [xs,ys];

%plot open polygon
plot(polygon(:,1),polygon(:,2), '-o');
axis([0 10 0 10]);
hold on;

%define weights
%w = 0.005;  %C^0 continuity 
w = 0.0105; %C^1 continuity 
%w = 0.0116; %C^2 continuity 

n1 = -11/81 + 13*w;
n2 = 13/27 -51*w;
n3 = -2/27 + 74*w;
n4 = 74/81 -46*w;
n5 = -5/27 + 9*w;
n6 = w;

%define the number of steps of the subdivision
steps = 5;
pause;

for i =1:steps
    
    %new polygon
    s = size(polygon,1);
    
    %temporary polygon
    
    
    tmp_polygon = [2*polygon(1,:)- polygon(3,:);
                   2*polygon(1,:)-polygon(2,:);
                   polygon;
                   2*polygon(end,:)- polygon(end-1,:);
                   2*polygon(end,:)- polygon(end-2,:);
                   2*polygon(end,:)- polygon(end-3,:);
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
    
    polygon = new_polygon(1:end-2,:);
    plot(polygon(:,1),polygon(:,2),'-o');
    axis([0 10 0 10]);
    hold on;
    pause;
    
end

hold off;
plot(polygon(:,1),polygon(:,2));
axis([0 10 0 10]);
hold on;


