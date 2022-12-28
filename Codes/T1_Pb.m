filename = 'Team7.wav';
[y,Fs] = audioread(filename);
l = length(y);

idx = 1:l;

figure()
plot(idx,y,'r');
ylabel('y(t)');
xlabel('t');
title('The signal read from the wav file');

figure()
pspectrum(y,1e3,'spectrogram','TimeResolution',0.1,'OverlapPercent',99,'Leakage',0.85);




