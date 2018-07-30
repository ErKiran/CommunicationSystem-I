t=0:0.001:1;
vm=5
vc=10;
fm=2;
fc=2;
% Message Signal
sm=vm*sin(2.*pi.*fm.*t);
subplot(5,1,1);
plot(t,sm);
xlabel('Time');
ylabel('Amplitude');
title('Message signal');
% Carrier Signal
sc=vc*sin(2.*pi.*fc.*t);
subplot(5,1,2);
plot(t,sc);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');
% Modulation Index = 0.5
m=0.5;
y=vc*sin(2.*pi.*fc.*(t+m).*sin(2.*pi.*fm.*t));
subplot(5,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Phase Modulated wave (m<1)');
% Modulation Index = 1
m=1;
y=vc*sin(2.*pi.*fc.*(t+m).*sin(2.*pi.*fm.*t));
subplot(5,1,4);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Phase Modulated wave (m=1)');
% Modulation Index = 2
m=2;
y=vc*sin(2.*pi.*fc.*(t+m).*sin(2.*pi.*fm.*t));
subplot(5,1,5);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Phase Modulated wave (m>1)');