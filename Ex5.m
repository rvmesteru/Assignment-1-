% Exercise 5: Fuzzy Systems and Inference (Corrected)
clear; clc;

% Define universes and membership functions from the tables
Lengths = [150 160 170 180 190 200];
mu_T = [0.0 0.1 0.3 0.8 0.9 1.0]; % Tall
mu_S = [1.0 1.0 0.6 0.3 0.0 0.0]; % Short

Weights = [50 60 70 80 90 100];
mu_H = [0.0 0.1 0.3 0.4 0.9 1.0]; % Heavy
mu_L = [1.0 0.8 0.4 0.1 0.0 0.0]; % Light

% John's height membership function (John is about 170 cm long)
% {(150, 0), (160, 0.4), (170, 1), (180, 0.4), (190, 0), (200, 0)}
John_Height = [0.0 0.4 1.0 0.4 0.0 0.0];

% Rule 1: Tall people are heavy (IF Height is Tall THEN Weight is Heavy)
% Using min operator for Cartesian product (implication relation R1)
R1 = min(mu_T', mu_H);

% Rule 2: Short people are light (IF Height is Short THEN Weight is Light)
% Using min operator for relation R2
R2 = min(mu_S', mu_L);

% Combine rules using union (maximum between rules)
R_sys = max(R1, R2);

% Max-product compositional rule of inference:
% For each weight value, take the maximum over all heights of 
% (John_Height * R_sys)
John_Weight_Result = zeros(1, length(Weights));
for w_idx = 1:length(Weights)
    John_Weight_Result(w_idx) = max(John_Height .* R_sys(:, w_idx)');
end

% Display results
disp('--- EXERCISE 5 RESULTS ---');
disp('Membership function of John''s weight [50, 60, 70, 80, 90, 100 kg]:');
disp(John_Weight_Result);