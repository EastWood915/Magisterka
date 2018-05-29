clear all
close all
clc

n = 4;
f = 2e3;

[zb,pb,kb] = butter(n,2*pi*f,'s');
[bb,ab] = zp2tf(zb,pb,kb);
[hb,wb] = freqs(bb,ab,4096);

[z1,p1,k1] = cheby1(n,3,2*pi*f,'s');
[b1,a1] = zp2tf(z1,p1,k1);
[h1,w1] = freqs(b1,a1,4096);

[zbe,pbe,kbe] = besself(n,2*pi*f);
[bbe,abe] = zp2tf(zbe,pbe,kbe);
[hbe,wbe] = freqs(bbe,abe,4096);


bode(b1, a1, {1,5e5})
hold on
bode(bb, ab, {1,5e5})
bode(bbe, abe, {1,5e5})