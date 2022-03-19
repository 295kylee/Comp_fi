% 
% Problem set 1
% Kyuho Lee

%% Question 4 - a
% Writing a function that delivers the price of an asset given T - t period
% using real world probability
function [S] = p1q4a_Lee(mu,sigma,deltat,T,S0)
% S0 = the current value of a stock price under real-world probability
% measure
% sigma = volatility, variance
% mu = trend component
% T = Total time period
% deltat = change in time 
% Output
% S = output, Future price of stock at t + deltat

t = 0:deltat:T; % time steps
n = length(t);
S = zeros(n,2);
S(1,2) = S0;
z = randn(n,1);
for i = 1:n
    S(i,1) = t(i);
    S(i+1,2) = (1 + mu*deltat + sigma*sqrt(deltat)*z(i))*S(i,2);
end
S(end,1) = T + deltat;


