%% Question 1
% part a - write a Matlab function that takes as arguments M0, r, T and n
% The function is built as p1q1a_Lee
clc; clear all; close all;
%% Question 1 - part b
% Argument values
M0 = 50; % initial Investment
r = 0.05; % riskfree interest rate
T = 5; % Investment Period
n = [1, 2, 4, 12, 52]; % Number of interest rate compounding

%%
MM = zeros(5,2);
for i = 1:T
    MM(i,1) = n(i);
    MM(i,2) = p1q1a_Lee(M0,r,T,n(i));
end

%% Q1 - D 
nvec = [1, 2, 4, 12, 52]';% Number of interest rate compounding for version B
Mmat = p1q1b_Lee(M0,r,T,nvec);

%% Q1 - E %% NEED TO ADD HORIZONTAL LINE
% Producing a chart
nvec_360 = [1:360]'; % generating nvec in range from 1 to 360
% get MT
MT = p1q1b_Lee(M0,r,T,nvec_360);

figure()
plot(MT(:,1),MT(:,2));
title('As n increases riskfree interest compounds exponentially');
xlabel('number of n, riskfree interest rate compounding');
ylabel('Value of the Investment');
yline(exp(r*T)*M0,':');
