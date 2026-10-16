% Exercise 4: Composition of Fuzzy Relation and Fuzzy Set
clear; clc;

% Problem statement:
% Consider the fuzzy relation R from Exercise 3 ("x is considerably bigger than y")
% and the fuzzy set A ("x is small") given by A = 0.4/x1 + 0.8/x2 + 0/x3.
% Obtain the value of the expression "x is considerably bigger than y and x is small".

% Define the fuzzy relation R from Exercise 3
R = [0.6 0.3 0.8 0.2;
    0.4 0.9 0.5 0.7;
    0.1 0.5 0.6 0.3];

% Define the membership values of fuzzy set A ("x is small") for x1, x2, x3
A_small = [0.4; 0.8; 0.0];

% Create the cylindrical extension of A to match the dimensions of R (X x Y)
% This replicates the vector A across all 4 columns corresponding to Y
Cyl_A = repmat(A_small, 1, 4);

% The conjunction "and" is typically modeled using the minimum operator
Expr4 = min(Cyl_A, R);

% Display results
disp('--- EXERCISE 4 RESULTS ---');
disp('Result of "x is considerably bigger than y and x is small":');
disp(Expr4);