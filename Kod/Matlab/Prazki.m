clear all
close all
clc

load Prazki.mat

Freq = [0:5:2005];
dt = 0.2/2048;
Time = dt*[0:1:2047];

figure()
hold on
plot(Time, SineN4) 
title('Spróbkowane przebiegi - sinus, N=4')
xlabel('Czas [s]')
ylabel('Napiêcie [V]')
grid on

figure()
hold on
bar(Freq, SineFFTN4)
title('FFT - sinus, N=4')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Amplituda [V]')
axis([0, 2000, 0, 0.5])

figure()
hold on
plot(Time, SineN16); 
title('Spróbkowane przebiegi - sinus, N=16')
xlabel('Czas [s]')
ylabel('Napiêcie [V]')
grid on

figure()
hold on
bar(Freq, SineFFTN16)
title('FFT - sinus, N=16')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Amplituda [V]')
axis([0, 2000, 0, 0.5])

figure()
hold on
plot(Time, RecN4); 
title('Spróbkowane przebiegi - prostok¹t, N=4')
xlabel('Czas [s]')
ylabel('Napiêcie [V]')
grid on

figure()
hold on
bar(Freq, RecFFTN4)
title('FFT - prostok¹t, N=4')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Amplituda [V]')
axis([0, 2000, 0, 0.5])

figure()
hold on
plot(Time, RecN16); 
title('Spróbkowane przebiegi - prostok¹t, N=16')
xlabel('Czas [s]')
ylabel('Napiêcie [V]')
grid on

figure()
hold on
bar(Freq, RecFFTN16)
title('FFT - prostok¹t, N=16')
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Amplituda [V]')
axis([0, 2000, 0, 0.5])