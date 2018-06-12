clear all
close all
clc

load 'BadanieFiltra.mat';

VoutVin = 20*log10(VoutVin);
semilogx(f, VoutVin, 'LineWidth', 2)
grid on
xlabel('Częstotliwość [Hz]')
ylabel('Wzmocnienie [dB]')
