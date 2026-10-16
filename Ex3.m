% Exercise 3: Projections of a Fuzzy Relation
clear; clc;

% Problem statement:
% Consider the fuzzy relation R given in the table, and obtain 
% its projections onto X and Y respectively.

% Define the fuzzy relation matrix R 
% Rows correspond to x1, x2, x3; Columns correspond to y1, y2, y3, y4
R = [0.6 0.3 0.8 0.2;
    0.4 0.9 0.5 0.7;
    0.1 0.5 0.6 0.3];

% Obtain the projection of R onto X by taking the maximum value over each row
Proj_X = max(R, [], 2);

% Obtain the projection of R onto Y by taking the maximum value over each column
Proj_Y = max(R, [], 1);

% Display results
disp('--- EXERCISE 3 RESULTS ---');
disp('Projection of R onto X (max over rows):');
disp(Proj_X');

disp('Projection of R onto Y (max over columns):');
disp(Proj_Y);
