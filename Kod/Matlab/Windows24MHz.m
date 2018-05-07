clear all
close all
clc

load Windows24MHz.mat;

SineBmanStd = std(SineBman);
SineBmanMean = mean(SineBman);
SineHammStd = std(SineHamm);
SineHammMean = mean(SineHamm);
SineHannStd = std(SineHann);
SineHannMean = mean(SineHann);
SineRectStd = std(SineRect);
SineRectMean = mean(SineRect);

SqBmanStd = std(SqBman);
SqBmanMean = mean(SqBman);
SqHammStd = std(SqHamm);
SqHammMean = mean(SqHamm);
SqHannStd = std(SqHann);
SqHannMean = mean(SqHann);
SqRectStd = std(SqRect);
SqRectMean = mean(SqRect);