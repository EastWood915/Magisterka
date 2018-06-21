clear all
close all
clc

N = 2560;
t_pom = 10/57.5;
t = linspace(0, t_pom-t_pom/N, N);
f = 57.5;

sig = 230*sin(2*pi*f*t);
sig = sig/230 + 2;

plot(t, sig)
grid on
xlabel('t[s]')
ylabel('U[V]')
