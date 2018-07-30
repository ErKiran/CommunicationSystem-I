%SingleSideBand Supressed Carrier (SSB-SC

fc = 400; %Carrier Frequency
fm = 50;  %Baseband Frequency

t = linspace(0,1,1000);  %Timebase

m = cos(2*pi*fm*t);        %Baseband signal/message signal
mh = imag(hilbert(m));     %Hilbert Transform of baseband

sb = m.*cos(2*pi*fc*t) - mh.*sin(2*pi*fc*t);   %Expression for SSB with USB, use + for LSB

plot(t,sb);
title('Single SideBand Modulation');
xlabel('Time');
ylabel('ssb');
