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


% Plot signals
figure;
subplot(3,1,1);
plot(t,m_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Message signal in time domain');


subplot(3,1,2);
plot(t,c_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Carrier signal in time domain');



subplot(3,1,3);
plot(t,s_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Amplitude modulated signal');






