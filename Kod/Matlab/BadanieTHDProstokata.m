clear all 
close all
clc

%% Generacja prostok¹ta
N = 2048;
t = linspace (20*pi/N, 20*pi, N);
wave = square(t);

plot(wave)
axis([0 2048 -2 2])

%% FFT przed filtracj¹
figure()
bar(abs(fft(wave)))

%% Filtracja
fs = 5*2048;
fg = 2500;
[b,a] = butter(8, fg/fs);
wave = filter(b, a, wave);
figure()
plot(wave)
axis([0 2048 -2 2])

%% FFT po filtracji
figure()
bar(abs(fft(wave)))