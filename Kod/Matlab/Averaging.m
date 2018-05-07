clear all
close all
clc

load Averaging.mat;

N1Std = std(N1);
N1Mean = mean(N1);
N2Std = std(N2);
N2Mean = mean(N2);
N4Std = std(N4);
N4Mean = mean(N4);
N8Std = std(N8);
N8Mean = mean(N8);
N16Std = std(N16);
N16Mean = mean(N16);
N32Std = std(N32);
N32Mean = mean(N32);
N64Std = std(N64);
N64Mean = mean(N64);

N = [1 2 4 8 16 32 64]
figure()
plot(N, [N1Mean N2Mean N4Mean N8Mean N16Mean N32Mean N64Mean])
title('Wartoœæ œrednia')

figure()
plot(N, [N1Std N2Std N4Std N8Std N16Std N32Std N64Std])
title('Odchylenie standardowe')