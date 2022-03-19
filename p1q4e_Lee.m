%% Question 4 - e
% Writing a function that delivers the price of an asset at the end of T
% using real world probability
function [S2] = p1q4e_Lee(mu,sigma,deltat,T,S0)
% S0 = the current value of a stock price 
% sigma = variance
% mu = trend component
% T = Total time period
% deltat = change in time 
% Output
% S2 = output, simulated price of the stock at T

t = 0:deltat:T; % time steps
n = length(t);
S = zeros(n,2);
S(1,2) = S0;
z = randn(n,1);
for i = 1:n
    S(i,1) = t(i);
    S(i+1,2) = (1 + mu*deltat + sigma*sqrt(deltat)*z(i))*S(i,2);
end

S2 = S(end-1,2);


