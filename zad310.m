img = imread('Zrzut ekranu 2024-10-09 125218.png'); 
gray_img = rgb2gray(img); 

[rows, cols] = size(gray_img); 
[X, Y] = meshgrid(1:cols, 1:rows);

theta = deg2rad(60); 
A_2D = [cos(theta), -sin(theta); sin(theta), cos(theta)];


points_2D = [X(:), Y(:)]'; 

rotated_points_2D = A_2D * points_2D; 

X_rot = reshape(rotated_points_2D(1,:), rows, cols); 
Y_rot = reshape(rotated_points_2D(2,:), rows, cols); 
figure(1);


subplot(1, 2, 1);
imshow(gray_img);
title('Oryginalny obraz');


subplot(1, 2, 2);
plot(X_rot, Y_rot, 'k.');
title('Obrócone współrzędne');
axis equal;



data = load('kielce.dat');


x = data(:, 1);
y = data(:, 2);
z = data(:, 3);
figure(2);
plot3(x, y, z, '-o');  
grid on;              
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D Line Plot');
MatrixData=[x,y,z]
ax = -45/180*pi; ay = -90/180*pi; az = 135/180*pi;
Rx = [ 1, 0, 0; 0, cos(ax), -sin(ax); 0, sin(ax), cos(ax) ]; 
Ry = [ cos(ay), 0, -sin(ay); 0, 1, 0; sin(ay), 0, cos(ay) ];
Rz = [ cos(az), -sin(az), 0; sin(az), cos(az), 0; 0, 0, 1 ];  
RotatedMatrix=Rz * Ry * Rx * MatrixData',
figure(3);
plot3(RotatedMatrix(1, :), RotatedMatrix(2, :), RotatedMatrix(3, :), '-o');  
grid on;               
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D Line Plot');