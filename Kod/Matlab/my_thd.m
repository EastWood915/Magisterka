function [wynik] = my_thd(signal)

widmo = abs(fft(signal));

G1 = sqrt(widmo(10)^2 + widmo(11)^2 + widmo(12)^2);
THD = 0;

for n = 2:40
   Gn = sqrt(widmo(10*n)^2 + widmo(10*n+1)^2 + widmo(10*n+2)^2);
   Gn = (Gn/G1)^2;
   THD = THD + Gn;
end

THD = sqrt(THD);
wynik = 100*THD;

end