% task 1
fc=154000;
% task 2
fm=fc/10;
fs=100*fc;
t=0:1/fs:4/fm;
xc=cos(2*pi*fc*t);
xm=cos(2*pi*fm*t);
figure(1)
subplot(2,1,1),plot(t,xc);
title('carrier signal of 154 khz');
xlabel('time (sec)');
ylabel('amplitude');
subplot(2,1,2),plot(t,xm);
title('message signal of 15.4 khz');
xlabel('time (sec)');
ylabel('amplitude');
% DSB-SC MODULATION
z1= xm.*xc;
figure(2)
% task 3.1
subplot(2,1,1),plot(t,z1);
title('DSB-SC MODULATION IN TIME DAOMAIN');
xlabel('time (sec)');
ylabel('amplitude');
% task 3.2
l1=length(z1);
f=linspace(-fs/2,fs/2,l1);
Z1=fftshift(fft(z1,l1)/l1);
subplot(2,1,2),plot(f,abs(Z1));
title('DSB SC MODULATION IN FREQUENCY DOMAIN');
xlabel('frequency(hz)');
ylabel('amplitude');
axis([-200000 200000 0 0.3]);
% task 3.3 demodulation
s1=z1.*xc;
S1=fftshift(fft(s1,length(s1))/length(s1));
figure(3)
plot(f,abs(S1));
title(' demodulated signal IN FREQUENCY DOMAIN before filtring');
xlabel('frequency(hz)');
ylabel('amplitude');
axis([-200000 200000 0 0.3]);
hold on
Hlp=1./sqrt(1+(f./fc).^(2*100));
plot(f,Hlp,'g');
title(' frequency response of low pass filter');
xlabel('frequency(hz)');
ylabel('amplitude');
axis([-200000 200000 0 2]);
% task 3.4
E1=Hlp.*S1;
figure(4)
subplot(2,1,1),plot(f,E1);
title(' Recover signal IN FREQUENCY DOMAIN after filtring');
xlabel('frequency(hz)');
ylabel('amplitude');
axis([-200000 200000 0 0.3]);
e1=ifft(ifftshift(E1))*length(E1);
subplot(2,1,2),plot(t,(1/0.5)*e1);
title(' Recover signal IN Time DOMAIN after filtring');
xlabel('time(sec)');
ylabel('amplitude');

