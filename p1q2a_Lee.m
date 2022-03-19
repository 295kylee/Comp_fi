% 
% Problem set 1
% Kyuho Lee

%% Question 2 - a
% Writing a function to approximately solve ODE numerically
function [Zt] = p1q2a_Lee(r,T,F,N)
% F = face value
% T = Investment Period
% at some future date T, T > t
% r = constant riskfree interest rate
% N = time steps, number of subinterval, calculated within the
% funciton
% Output
% Zt = output, Presemt price of an asset  
% market value, delivery price at contract inception
%% 
deltat = T/N; % discretized number of subinterval within T - t
int = r/N;
Zt = F/((1 + int*N)^deltat);
end
