% Exercise 1: Linguistic Modifier
clear; clc;

% Definition:
% A linguistic modifier is an operator that changes the meaning of a fuzzy term (e.g., "very", "more or less").
% Given a fuzzy set A with membership function mu_A(x):
% - "very A" is computed as: (mu_A(x))^2
% - "more or less A" is computed as: sqrt(mu_A(x))

% Example domain x and membership function values for fuzzy set A
x = [1, 2, 3, 4, 5];
mu_A = [0.1, 0.3, 0.5, 0.8, 1.0];

% Compute "very A"
very_A = mu_A .^ 2;

% Compute "more or less A"
more_or_less_A = sqrt(mu_A);

% Display results
disp('--- EXERCISE 1 RESULTS ---');
disp('Domain x:');
disp(x);
disp('Original fuzzy set A (mu_A):');
disp(mu_A);
disp('Very A:');
disp(very_A);
disp('More or less A:');
disp(more_or_less_A);