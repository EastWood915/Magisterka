clear all
close all
clc

N=256;
dt = 1/N;
t = 0:dt:1-dt;

subplot(2,1,1)
x = sin(17.5*pi*t);
plot(x)
xlabel('n');
ylabel('x(n)');

subplot(2,1,2)
X = abs(fft(x))/(N/2);
bar(X(2:end));
xlabel('m');
ylabel('|X(m)|');
axis([0, 50, 0, 1])