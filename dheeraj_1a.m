Fs = 1500;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1;                % Length of signal
t = (0:T:L);          % Time vector

a1=5;
a2=2;
f1=20;
f2=30;
theeta1=0;
theeta2=0;

y1 = a1*cos(2*pi*f1*t);
y2 = a2*cos(2*pi*f2*t);
s=a1*cos(2*pi*f1*t+theeta1) + a2*cos(2*pi*f2*t+theeta2);
plot(1000*t(1:Fs),s(1:Fs))
title("Signal in time domain")
xlabel("t (s)")
ylabel("sum of signals")