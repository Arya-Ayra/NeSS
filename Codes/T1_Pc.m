t = 0:0.001:2;
f_in_start = 70;
f_in_end = 700;
f_in = linspace(f_in_start, f_in_end, length(t));
y = sin(2*pi * f_in .* t);
plot(t,y);
ylabel('y(t)');
xlabel('t');
title('Generated signal');
xlim([-0.2 2.2]);
ylim([-1.2 1.2]);
grid on

figure()
pspectrum(y,1e3,'spectrogram','TimeResolution',0.1,'OverlapPercent',99,'Leakage',0.85);


