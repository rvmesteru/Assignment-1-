% Exercise 2: Cylindrical Extension of a Fuzzy Set
clear; clc;

% Problem statement:
% Compute the cylindrical extension of the fuzzy set A = 0.3/x1 + 0.7/x2 
% to X x Y, with X = {x1, x2} and Y = {y1, y2, y3, y4}.

% Define the membership values of fuzzy set A corresponding to X = {x1, x2}
mu_A = [0.3; 0.7];

% Define elements of Y
Y_elements = {'y1', 'y2', 'y3', 'y4'};

% Compute the cylindrical extension by replicating mu_A across all columns (Y)
Cyl_Ext = repmat(mu_A, 1, length(Y_elements));

% Display results
disp('--- EXERCISE 2 RESULTS ---');
disp('Cylindrical Extension of A on X x Y:');
disp(Cyl_Ext);