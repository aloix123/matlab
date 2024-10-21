
clear all; close all;

R1 = 2; R2 = 6; R3 = 4; 
E1 = 10;  E2 = 10;  

A = [  R1,   -R2;  ...
         R2, R3;  ...
              ],
b = [ E1-E2; ...
      E2; ...
        ],


x1 = inv(A)*b;   
x2 = pinv(A)*b;  
x3 = A \ b;      

for k=1:length(b)
    Ak = A; Ak(:,k) = b; 
    x4(k) = det( Ak ) / det(A); 
end    
x4 = x4.';
[ x1, x2, x3, x4 ], pause
