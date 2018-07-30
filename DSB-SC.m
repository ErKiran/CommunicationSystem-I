fc=143600; % carrier signal frequency
fm=fc/10; % message signal frequency
fs=100*fc;
t=0:1/fs:4/fm;
xc=cos(2*pi*fc*t);
xm=10*cos(2*pi*fm*t); % amplitude of sinusodial is 10
figure(1)
subplot(2,1,1),plot(t,xc);
title('carrier signal of 143.6 khz');
xlabel('time (sec)');
ylabel('amplitude');
subplot(2,1,2),plot(t,xm);
title('message signal of 14.36 khz');
xlabel('time (sec)');
ylabel('amplitude');
% DSB-SC MODULATION
z1= xm.*xc;
figure(2)
subplot(2,1,1),plot(t,z1);
title('DSB-SC MODULATION IN TIME DAOMAIN');
xlabel('time (sec)');
ylabel('amplitude');

l1=length(z1);
f=linspace(-fs/2,fs/2,l1);
Z1=fftshift(fft(z1,l1)/l1);
subplot(2,1,2),plot(f,abs(Z1));
title('DSB SC MODULATION IN FREQUENCY DOMAIN');
xlabel('frequency(hz)');
ylabel('amplitude');
axis([-200000 200000 0 3]);