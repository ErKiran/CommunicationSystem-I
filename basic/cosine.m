t=0:0.001:10;
a1=30;
f1=1;
s2=a1*cos(2.*pi.*f1.*t);
subplot(3,1,2);
plot(t,s2);
xlabel('Time');
ylabel('Amplitude');
title('cos(x)');
 