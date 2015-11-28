clear all;
close all;
clc;

bits = 64;

stopClock = 0;

A = zeros(stopClock+1,2);
A(:,1) = 0;
A(:,2) = hex2dec('FFFFFFFF');

B = zeros(stopClock+1,2);
B(:,1) = 0;
B(:,2) = hex2dec('FFFFFFFF');

options = simset('SrcWorkspace','current');
sim('Karatsuba_Multiplier_64_Unsigned.slx',[],options);

figure(1);
stem(A(:,2),C.Data,'-b');
title('Product');
   