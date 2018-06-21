clear all
close all
clc

N = 2560;
t_pom = 10/42.5;
t = linspace(0, t_pom-t_pom/N, N);
f = 42.5;

sig = 0.8*230*sin(2*pi*f*t) + 0.05*0.8*230*sin(2*pi*2*f*t) + 11.5*sin(2*pi*1.5*f*t);
sig = sig/230 + 2;

plot(t, sig)
grid on
xlabel('t[s]')
ylabel('U[V]')
