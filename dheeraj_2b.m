
load train.mat
audiowrite('audio1.wav',y,Fs);
[y1,Fs1]=audioread('audio1.wav');

load chirp.mat
audiowrite('audio2.wav',y,Fs);
[y2,Fs2]=audioread('audio2.wav');

load handel.mat
audiowrite('audio3.wav',y,Fs);
[y3,Fs3]=audioread('audio3.wav');


[pks1, locs1] = findpeaks(y1, Fs1, 'SortStr', 'descend');
[pks2, locs2] = findpeaks(y2, Fs2, 'SortStr', 'descend');
[pks3, locs3] = findpeaks(y3, Fs3, 'SortStr', 'descend');

fprintf('\n Audio 1 prominent frequencies :\n');
disp(round(locs1(1:5),2));
fprintf('\n Audio 2 prominent frequencies :\n');
disp(round(locs2(1:5),2));
fprintf('\n Audio 3 prominent frequencies :\n');
disp(round(locs3(1:5),2));