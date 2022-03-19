% 
% Problem set 1
% Kyuho Lee

%% Question 2 - d
% Writing a function to compute Duration, D, numerically
function [D] = p1q2d_Lee(r,T,F,N,dr)
% F = face value
% T = Investment Period
% at some future date T, T > t
% r = constant riskfree interest rate
% dr = change in r
% N = time steps, number of subinterval
% Output
% D = output, Duration  
%% 
z1 = p1q2a_Lee(r,T,F,N); % calling function from 2 - a
z2 = p1q2a_Lee(r+dr,T,F,N);
D = -((z1-z2)/dr)*(1/z1);
end

