clear all
close all
clc

load 'BadanieFiltra.mat';

VoutVin = 20*log10(VoutVin);
semilogx(f, VoutVin, 'LineWidth', 1.5)
grid on
xlabel('Czêstotliwoœæ [Hz]')
ylabel('Wzmocnienie [dB]')

fa = [f(48:end); 7000; 8000; 9000; 10000];
extra = 16870*fa.^(-0.6082)-140.4;
hold on
plot(fa, extra, '--r')