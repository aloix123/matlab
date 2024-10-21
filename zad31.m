clear all;
close all;
u=[1;2;3];
v=[4;5;6];
A=[1,2,3;4,5,6;7,8,9];
B=eye(3);
A+A,
A*A',
A*B,
A*v,
c=A*B*B*B,
det(A),
roots(poly(A)),
prod(roots(poly(A))),
svd(A),