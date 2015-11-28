clear all;
close all;
clc;

bits = 16;

stopClock = 2^bits-1;

A = zeros(stopClock+1,2);
A(:,1) = 0:stopClock;
A(:,2) = 0:stopClock;

B = zeros(stopClock+1,2);
B(:,1) = 0:stopClock;
B(:,2) = 0:stopClock;

options = simset('SrcWorkspace','current');
sim('AE_Multiplier.slx',[],options);

figure(1);
stem(A(:,2),C.Data,'-b');
title('Product');
   