fm = 30; % Hz
fc = 300; % Hz
fs = 10000; % Hz
t = 0:1/fs:10/fm; % Time vector

% Message signal
m_t = cos(2*pi*fm*t);

% Carrier signal
c_t = cos(2*pi*fc*t);

% Amplitude modulated signal
s_t = (1 + m_t).*c_t;

% FFT of signals
M_f = abs(fft(m_t));
C_f = abs(fft(c_t));
S_f = abs(fft(s_t));

% Frequency vector
f = (0:length(m_t)-1)*fs/length(m_t);

% Plot signals
figure;
subplot(2,3,1);
plot(t,m_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Message signal in time domain');

subplot(2,3,4);
plot(f,M_f);
xlim([-1000,11000]);
xlabel('Frequency (bins)');
ylabel('Magnitude');
title('Message signal in frequency domain');

subplot(2,3,2);
plot(t,c_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Carrier signal in time domain');

subplot(2,3,5);
plot(f,C_f);
xlim([-1000,11000]);
xlabel('Frequency (bins)');
ylabel('Magnitude');
title('Carrier signal in frequency domain');

subplot(2,3,3);
plot(t,s_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Amplitude modulated signal in time domain');

subplot(2,3,6);
plot(f,S_f);
xlim([-1000,11000]);
xlabel('Frequency (bins)');
ylabel('Magnitude');
title('Amplitude modulated signal in frequency domain');






