clear all
close all
clc

N = 2560;
t_pom = 10/57.5;
t = linspace(0, t_pom-t_pom/N, N);
f = 57.5;

sig = 230*sin(2*pi*f*t) + 20.7*sin(2*pi*1.5*f*t) + 23*sin(2*pi*2*f*t) + 23*sin(2*pi*11*f*t) + 11.5*sin(2*pi*29*f*t) + 0.3*23*sin(2*pi*50*f*t);
sig = sig/230 + 2;

plot(t, sig)
grid on
xlabel('t[s]')
ylabel('U[V]')
