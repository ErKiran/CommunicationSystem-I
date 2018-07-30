
Ac=input('Enter the amplitude of Carrier Signal Ac');
Am=input('Enter the amplitude of Message Signal Am');
fc=input('Enter the frequency of Carrier Signal Ac');
fm=input('Enter the frequency of Message Signal Ac');% fm<fc
m=input('Enter the Modulation Index');
t=input('Enter the time period');
t1=linspace(0,t,1000);
y1=sin(2*pi*fm*t1); % message signal
y2=sin(2*pi*fc*t1); % carrier signal
eq=(1+m.*y1).*(Ac.*y2);
subplot(311);
plot(t1,y1);
xlabel('Time');
ylabel('Amplitude');
title('Message signal')
subplot(312)
plot(t1,y2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');
subplot(313);
plot(t1,eq);
plot(t1,eq,'r');
xlabel('Time');
ylabel('Amplitude');
title('Modulated signal');