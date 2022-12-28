%T2_Pd.m
filename = '107.csv';

M = readmatrix(filename);
M = M(1:3000 , :);
ts = 0.0027;
t = ts:ts:8.1;
t=t';

n = 310;
w = 2*pi/n;
dk = zeros(n , 1);
abs_dk = zeros(n , 1);
real_part=zeros(n , 1);
imaginary_part =zeros(n , 1);
for k= 1:n
    sum = 0;
    for tt= 1:n
        z = exp(-1i *k*w*tt);
        add = y1(tt,1)*z;
        sum=sum+add;
    end
    sum = sum/n;
    dk(k,1) = sum;
    abs_dk(k,1) = abs(sum);
    real_part(k,1)= real(sum);
    imaginary_part(k,1) = imag(sum);
end

figure();
subplot(2,2,1);
plot(1:310, abs_dk, 'red');
xlabel('k');
ylabel('|dk|');
title('Absolute value of dk vs k');

%figure();
subplot(2,2,2);
plot(1:310 , real_part, 'red');
xlabel('k');
ylabel('Real(dk)');
title('Real part of dk vs k');

%figure();
subplot(2,2,3);
plot(1:310 , imaginary_part, 'red');
xlabel('k');
ylabel('Imaginary(dk)');
title('Imaginary part of dk vs k');

%figure();
subplot(2,2,4);
plot(1:310 , angle(dk), 'red');
xlabel('k');
ylabel('Angle(dk)');
title('Angle of dk vs k');

final_part= zeros(n , 1);
for h=1:n
    x = 0;
    for l = 1:n
        x = x+dk(l,1)*exp(1i*l*w*h);   
    end
    final_part(h,1) = real(x);
end
figure();
%subplot(2,3,2);
plot(t(1:n,: ) , final_part, 'red');
xlabel('time');
ylabel('x(t)');
title('x(t) vs time');
