% File path
audioFilePath = '1.capacitance.mp3';%Please replace the corresponding file name here when you want to plot figures for other sonification results.

% Read audio files
[audio, sampleRate] = audioread(audioFilePath);

% Convert multi-channel to single channel
audio = mean(audio, 2);%M = mean(A,dim) returns the mean along dimension dim. For example, if A is a matrix, then mean(A,2) returns a column vector containing the mean of each row.

% Set parameters
windowSize = 1024;
overlap = 512;

% Display audio waveform
figure;
plot((1:length(audio))/sampleRate, audio);
xlabel('Time (s)');
ylabel('Amplitude');
title('Audio Waveform');
