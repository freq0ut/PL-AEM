clear all;
close all;
clc;

bits = 10;

stopClock = 2^bits-1;

x = zeros(stopClock+1,2);
x(:,1) = 0:stopClock;
x(:,2) = 0:stopClock;

k = zeros(stopClock+1,2);
k(:,1) = 0:stopClock;
k(:,2) = 7;

options = simset('SrcWorkspace','current');

sim('Barrel_Shifter_10_Bit.slx',[],options);

figure(1);
    stem(x(:,2),simoutP.Data,'-b');
    title('Barrel Shifter');
    