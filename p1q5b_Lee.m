% 
% Problem set 1
% Kyuho Lee

%% Question 5 - b
% Writing a function that delivers the price of an asset given T - t period
% using risk neutral probability
function [S] = p1q5b_Lee(r,sigma,deltat,T,S0)
% S0 = the current value of a stock price under real-world probability
% measure
% sigmat = volatility, variance
% r = constant riskfree rate
% T = Total time period
% deltat = change in time 
% Output
% S = output, forecasted price of stock at t + deltat

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



