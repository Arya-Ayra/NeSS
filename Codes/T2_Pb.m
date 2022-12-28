%T2_pb.m
filename = '107.csv';

M = readmatrix(filename);
M = M(1:3000 , :);
ts = 0.0027;
t = ts:ts:8.1;
t=t';

y1 = M(: , 2);
figure();
plot(t , y1, 'red');
xlabel('time');
ylabel('ECG signal')
title('Ploting the given ECG signal as function of time');
