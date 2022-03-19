% 
% Problem set 1
% Kyuho Lee

%% Question 3 - d
% Writing a function to compute the time-t market value of a long position
% forward contract wirtten on non-divided paying stock
function  [Mt] = p1q3d_Lee(St, r, K, T, t, n)
% St = today's (times t) price of the underlying asset
% K = Delivery price of the forward contract
% at some future date T, T > t
% r = annual constant riskfree interest rate
% T = Total time period
% t = time passed
% n = time intervals, number of compounding
% Output
% Mt = output, 
% time-t market value of a long positon forward contract
%% 
p = T - t; % left over period
int = r/n; % decomposed interest rate at given time compounding
Kt = exp(int*p) * St; 
Mt = exp(-int*p) * (Kt - K);
end

