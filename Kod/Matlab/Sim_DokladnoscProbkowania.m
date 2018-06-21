clear all
close all
clc

%% Generacja przebiegu prostok�tnego
n = 2048;
t = linspace(0, 10-(10/n), n);
signal = zeros(1,n);

for i = 1:2:40
   signal = signal + (1/i)*sin(2*pi*i*t); 
end
plot(t, signal)
grid on
axis tight
xlabel('t [s]')
ylabel('x(t)')

%% Generacja sygna��w z r�nymi odchy�kami cz�stotliwo�ci
%k = [0, 1, 2, 3, 5, 10, 20, 30, 40, 50, 70, 80, 90, 100];
k = [0, 1, 2, 3, 5, 10];
signals = zeros(length(k), n);

for j = 1:length(k)
    t = linspace(0, 10-(k(j)+1)*(10/n), n);
    for i = 1:2:40
        signals(j, :) = signals(j, :) + (1/i)*sin(2*pi*i*t+pi/2); 
    end
end

%% Wyznaczenie THD poszczeg�lnych sygna��w
for i = 1:length(k)
   THD(i) = my_thd(signals(i, :));
end

figure()
plot(k, THD)
grid on
xlabel('Odchy�ka czasu pr�bkowania [liczba pr�bek na okno]')
ylabel('THD [%]')
hold on
plot(k, 47.03*ones(1, length(k)), '--r')
