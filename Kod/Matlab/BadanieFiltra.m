clear all
close all
clc

load 'BadanieFiltra.mat';

VoutVin = 20*log10(VoutVin);
semilogx(f, VoutVin)
grid on
xlabel('Cz�stotliwo�� [Hz]')
ylabel('Wzmocnienie [dB]')
