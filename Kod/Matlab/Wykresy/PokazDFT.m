clear all
close all
clc

N=32;
dt = 1/N;
t = 0:dt:1-dt;

subplot(2,1,1)
x = sin(2*pi*t) + 0.5*sin(4*2*pi*t);
stem(x, '-.', 'filled')
xlabel('n');
ylabel('x(n)');

subplot(2,1,2)
X = abs(fft(x))/(N/2);
bar(X(2:end));
xlabel('m');
ylabel('|X(m)|');
axis([0 32 0 1.5]);