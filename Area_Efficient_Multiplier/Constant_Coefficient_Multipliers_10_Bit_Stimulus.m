clear all;
close all;
clc;

bits = 10;

stopClock = 2^bits-1;

x = zeros(stopClock+1,2);
x(:,1) = 0:stopClock;
x(:,2) = 0:stopClock;

options = simset('SrcWorkspace','current');

sim('Constant_Coefficient_Multipliers.slx',[],options);

figure(1);
    subplot(3,1,1);
        stem(x(:,2),simout3B.Data,'-b');
        title('3B');
    subplot(3,1,2);
        stem(x(:,2),simout5B.Data,'-r');
        title('5B');
    subplot(3,1,3);
        stem(x(:,2),simout7B.Data,'-g');
        title('7B');
   