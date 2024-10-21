
[elephandsound,e1]=audioread('elephant02.wav',[1,9000]);
[birdsound,b1]=audioread('Canary trills animals012.wav',[1,9000]);
soundOfBirdAndElephant=elephandsound+birdsound;
N=length(soundOfBirdAndElephant);


n=0:N-1,k=0:N-1;
A = sqrt(2/N)*cos( pi/N *(k'*n));
y=A*soundOfBirdAndElephant;

hold on
plot(y)

maxY=2;
y(1:N/maxY,1) = zeros(1*N/maxY,1);

xback = A'*y;
figure; plot(xback); title('back(n)');

sound(xback);