%% 
% Problem set 1
% Kyuho Lee

%% Question 1 - version a
% Writing a function
function  [MT] = p1q1a_Lee(M0, r, T, n)
% M0 = initial investment
% r = riskfree interest (constant, with compounding n times per year)
% T = Investment Period
% n = number of compounding
% Output
% MT = output, value of the investment at the end of the T - year Period


p = T * n % number of compounding, if n = 2, compounding twice in a year
r_p = r/n % decomposed annual interest rate by number of compounding per year
MT = M0 * (1+r_p)^ p;

end


