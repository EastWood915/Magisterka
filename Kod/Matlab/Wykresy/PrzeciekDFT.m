clear all
close all
clc

N=256;
dt = 1/N;
t = 0:dt:1-dt;

subplot(2,1,1)
x = sin(17.5*pi*t);
plot(t,x)
xlabel('t[s]');
ylabel('x(t)');
axis([0, 1, -1.3, 1.3])

subplot(2,1,2)
X = abs(fft(x))/(N/2);
bar(X(2:end));
xlabel('f[Hz]');
ylabel('|X(m)|');
axis([0, 50, 0, 1])