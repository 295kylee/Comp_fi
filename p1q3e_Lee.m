% 
% Problem set 1
% Kyuho Lee

%% Question 3 - e
% Writing a function to compute the time-t market value of a short position
% forward contract wirtten on non-divided paying stock
function  [KT] = p1q3e_Lee(St, r, S0, T, t, n, D)
% S0 = price of stock at t = 0
% St = price of the underlying asset at t
% at some future date T, T > t
% r = constant riskfree interest rate
% T = Total time period
% t = passed time
% D = dividend rate
% n = time intervals, number of compounding
% Output
% KT = output, 
% time-t market value of a short positon forward contract
%% 
% Under no arbitrage condition, price of the stock at time T should equal
% fwd contract price

p = T - t; % left over period
div = r - D;
int = div/n; % decomposed interest rate at given time compounding
Kt = exp(int*p) * S0;
KT = exp(-int*p) * (Kt-St);
end
