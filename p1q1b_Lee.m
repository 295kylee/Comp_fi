%% 
% Problem set 1
% Kyuho Lee

%% Question 1 - version b
% Writing a function
function  [Mvec] = p1q1b_Lee(M0, r, T, nvec)
% M0 = initial investment
% r = riskfree interest (constant, with compounding n times per year)
% T = Investment Period
% nvec = number of compounding, Vector
% Output
% Mvec = output, terminal value of the investment at the end of the T - year Period

%% 
% p = number of compounding, if n = 2, compounding twice in a year
k = size(nvec,1);
p = zeros(k,1); 
for i = 1:k
    p(i) = T * nvec(i); 
end 

%%
% r_p = decomposed annual interest rate by number of compounding per year
r_p = zeros(k,1);
for i = 1:k
    r_p(i) = r/nvec(i);
end

%%
% find Mvec
Mvec = zeros(k,2);
for i = 1:k
    Mvec(i,1) = nvec(i);
    Mvec(i,2) = M0 * (1+r_p(i))^p(i);
end
end



