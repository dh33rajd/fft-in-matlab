
load train.mat
audiowrite('audio1.wav',y,Fs);
[y1,Fs1]=audioread('audio1.wav');

load chirp.mat
audiowrite('audio2.wav',y,Fs);
[y2,Fs2]=audioread('audio2.wav');

load handel.mat
audiowrite('audio3.wav',y,Fs);
[y3,Fs3]=audioread('audio3.wav');

freq1=(0:length(fft(y1))-1)*Fs/length(fft(y1));
freq2=(0:length(fft(y2))-1)*Fs/length(fft(y2));
freq3=(0:length(fft(y3))-1)*Fs/length(fft(y3));

subplot(2,3,1)
plot(y1)
title("audio 1 in time axis")
xlabel("samples")
ylabel("y(t)")

subplot(2,3,4)
plot(freq1,abs(fft(y1)))
title("audio 1 in frequency axis")
xlabel("frequency")
ylabel("|Y(f)|")

subplot(2,3,2)
plot(y2)
title("audio 2 in time axis")
xlabel("samples")
ylabel("y(t)")

subplot(2,3,5)
plot(freq2,abs(fft(y2)))
title("audio 2 in frequency axis")
xlabel("frequency")
ylabel("|Y(f)|")

subplot(2,3,3)
plot(y3)
title("audio 3 in time axis")
xlabel("samples")
ylabel("y(t)")

subplot(2,3,6)
plot(freq3,abs(fft(y3)))
title("audio 3 in frequency axis")
xlabel("frequency")
ylabel("|Y(f)|")
