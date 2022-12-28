%T2_Pc.m
filename = '107.csv';

M = readmatrix(filename);
M = M(1:3000 , :);
ts = 0.0027;
t = ts:ts:8.1;
t=t';
lti = zeros(3000 , 1);

for index= 2:2999
    prev_sub = y1(index-1 , 1);
    next_sub = y1(index+1 , 1);

    product =( next_sub - y1(index , 1) )*( prev_sub - y1(index , 1) );
    if(product > 0)
        lti(index,1) = y1(index , 1);
    end
end

figure();
plot(t, lti, 'black');
xlabel('time');
ylabel('Y(t)');
title('Output of LTI sysyem');
