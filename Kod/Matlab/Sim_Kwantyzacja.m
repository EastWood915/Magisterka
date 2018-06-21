clear all
close all
clc

%% Generacja przebiegów
n = 2048;
Iterations = 100;
t = linspace(0, 10-(10/n), n);
signals = zeros(Iterations, n);

for i = 1:Iterations
   signals(i, :) = sin(2*pi*t + pi * rand(1))+2; 
end

%% Kwantyzacja sygna³ów
signals_quant = zeros(6, Iterations, n);
quants = [8, 10, 12, 14, 16];
quants_no = length(quants)+1;

signals_quant(1,:,:) = signals;
for i = 2:quants_no
   for j = 1:Iterations
      signals_quant(i, j, :) = kwantyzator(signals(j,:), quants(i-1)); 
   end
end

%% Wyznaczanie THD skwantowanych sygna³ów
THD = zeros(quants_no, Iterations);
for i = 1:quants_no
   for j = 1:Iterations
      THD(i,j) = my_thd(signals_quant(i,j,:));
   end
end

THD_mean = zeros(quants_no,1);
THD_std = zeros(quants_no,1);
for i = 1:quants_no
   THD_mean(i) = mean(THD(i,:));
   THD_std(i) = std(THD(i,:));
end

plot(quants, THD_mean(2:end))
grid on
xlabel('Rozdzielczoœæ przetwornika [bit]')
ylabel('THD [%]')