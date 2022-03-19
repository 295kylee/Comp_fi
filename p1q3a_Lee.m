% 
% Problem set 1
% Kyuho Lee

%% Question 3 - a
% Writing a function to generate forward price of a non-div-paying stock
function  [fwd] = p1q3a_Lee(St, r, T, n)
% St = today's (times t) price of the underlying asset
% T = Contract Period
% at some future date T, T > t
% r = constant riskfree interest rate
% n = time subinterval 
% Output
% fwd = output, delivery price that would make the contract have zero
% market value, delivery price at contract inception
%% 
% Under no arbitrage condition, price of the stock at time T should equal
% fwd contract price
int = r/n; % decomposed interest rate at given time compounding
t = [1:T * n]'; % number of compounding
fwd = zeros(size(t,1):2); % recording forward price
for i = 1:size(t,1)
    fwd(i,1) = t(i);
    fwd(i,2) = exp(int*t(i)) * St; 
end

