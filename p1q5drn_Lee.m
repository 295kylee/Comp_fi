% 
% Problem set 1
% Kyuho Lee

%% Question 5 - d
% Writing a function that delivers the price of an asset at the end of T
% using risk neutral probability
function [S2] = p1q5drn_Lee(r,sigma,deltat,T,S0)
% S0 = the current value of a stock price 
% sigma = volatility, variance
% r = constant risk free rate
% T = Total time period
% deltat = change in time 
% Output
% S2 = output, simulated price of stock at T

t = 0:deltat:T; % time steps
n = length(t);
S = zeros(n,3);
S(1,2) = S0;
z = randn(n,1);
for i = 1:n
    S(i,1) = t(i);
    S(i+1,2) = (1 + r*deltat + sigma*sqrt(deltat)*z(i))*S(i,2); % Risk Neutral Probability
end
S(end,1) = T + deltat;

S2 = S(end-1,2);


