clc;
clear;
close all;

N = 1000;

% Simulate measurement of |+> state
random_bits = randi([0 1], 1, N);

fprintf('First 20 quantum random bits:\n');
disp(random_bits(1:20));

fprintf('Number of 0s = %d\n', sum(random_bits == 0));
fprintf('Number of 1s = %d\n', sum(random_bits == 1));

figure;
histogram(random_bits, 'BinMethod', 'integers');
xlabel('Measured State');
ylabel('Frequency');
title('Quantum Random Number Generator');
