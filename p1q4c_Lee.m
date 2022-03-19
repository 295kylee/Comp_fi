%% Question 4 - c
% Writing a function to compute the time-t where price of the stock exceeds
% threshold
function [Time, Stdt,S] = p1q4c_Lee(mu,sigma,deltat,T,S0,B)
% S0 = the current value of a stock price under real-world probability
% measure
% sigmat = variance
% mu = mean
% T = Total time period
% deltat = change in time 
% Output
% S = matrix of Time and Price of the asset
% Time = output, Time takes to pass the threshold
% Stdt = Price of the stock when it surpassed the Threshold
% 


t = 0:deltat:T; % time steps
n = length(t);
S = zeros(n,2);
S(1,2) = S0;
z = randn(n,1);

    
for i = 1:n
    if S(i,2) <= B
        S(i,1) = t(i);
        S(i+1,2) = (1 + mu*deltat + sigma*sqrt(deltat)*z(i))*S(i,2);
    else
        break
    end
end
Stdt = nonzeros(S(:,1)); % time starts with 0 so I need to add 2 deltat
Time = (Stdt(end) + deltat * 2);

