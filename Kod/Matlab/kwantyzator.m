function [wynik] = kwantyzator(signal, n)

wynik = quantiz(signal,linspace(3.3/(2^n), 3.3, 2^n));

end