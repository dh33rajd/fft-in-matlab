Fs = 1500;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1;             % Length of signal
t = (0:T:L);        % Time vector

a1=5;
a2=2;
f1=20;
f2=30;
theeta1=0;
theeta2=0;

y1 = a1*cos(2*pi*f1*t);
y2 = a2*cos(2*pi*f2*t);
s=a1*cos(2*pi*f1*t+theeta1) + a2*cos(2*pi*f2*t+theeta2);
subplot(3,1,1);
plot(1000*t(1:Fs),s(1:Fs))
title("Signal in time domain")
xlabel("t (milliseconds)")
ylabel("sum of signals")


Y = fft(s);
freq=(0:length(s)-1)*Fs/length(s);

phase=angle(Y);
phi1 = mod(phase(f1),2*pi);
phi2 = mod(phase(f2),2*pi);

fprintf('phase response at f1 = %d Hz is %.4f radians \n',f1,phi1);
fprintf('phase response at f2 = %d Hz is %.4f radians \n',f2,phi2);

subplot(3,1,2);
mag = abs(Y);
plot(freq,mag);

title("magnitude spectrum")
xlabel("f (Hz)")
ylabel("|P1(f)|")

subplot(3,1,3);
plot(freq,angle(Y));
dim = [.0 .0 .0 .5];
%t = text([f1 f2],[phi1 phi2],'f');
title("magnitude spectrum")
xlabel("f (Hz)")
ylabel("|P1(f)|")

