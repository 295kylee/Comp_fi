%% Question 5 - a
clc; clear all; close all;
K = 20; % strike price
St = 0:40; % Price of the stock 
Polc = max(St-K,0); %Polc, payout for longing a call option
subplot(2,2,1);
plot(St,Polc)
axis([0 40 -15 20]);
title('Payout for longing a call option');
xlabel('Stock price');
ylabel('option payout');

posc = min(K-St,0); %Posc, payout for shorting a call option
subplot(2,2,2);
plot(St,posc)
axis([0 40 -15 20]);
title('Payout for shorting a call option');
xlabel('Stock price');
ylabel('option payout');

Polp = max(K-St,0); %Polp, payout for longing a put option
subplot(2,2,3);
plot(St,Polp)
axis([0 40 -15 20]);
title('Payout for longing a put option');
xlabel('Stock price');
ylabel('option payout');

posp = min(St-K,0); %Polc, payout for longing a put option
subplot(2,2,4);
plot(St,posp)
axis([0 40 -15 20]);
title('Payout for shorting a put option');
xlabel('Stock price');
ylabel('option payout');

%% Question 5 - c conditions
clc; clear all; close all;
S0 = 50; % S0 = the current value of a stock price under real-world probability
mu = .12; % mu = trend component
deltat = 1/360; % deltat = change in time 
r = .03; % annualized constant riskfree interest rate
T = 2; % T = Total time period
sigma = .15; % sigmat = variance

%% 
S = p1q5b_Lee(r, sigma, deltat, T, S0); % Risk neutral probability
S_rw = p1q4a_Lee(mu, sigma, deltat, T, S0); % Real World Probability
plot(S(1:end-1,1), S(1:end-1, 2), S(1:end-1,1), S_rw(1:end-1,2)); 
legend('Risk Neutral Probability','Real World Probability');


%% Question 5 - d
TE = 3/12; % Expiration date of the option is 3 month
K = 49; % strike price
S_rwrn = zeros(2000,2);
for i = 1:size(S_rwrn,1)
    S_rwrn(i,1) = p1q4e_Lee(mu, sigma, deltat, TE, S0);
    S_rwrn(i,2) = p1q5drn_Lee(r, sigma, deltat, TE, S0);
end

EpayoutRWRN_all = zeros(size(S_rwrn,1), 2);
for i = 1:size(S_rwrn,1)
    EpayoutRWRN_all(i,1) = S_rwrn(i,1) - K;
    EpayoutRWRN_all(i,2) = S_rwrn(i,2) - K;
end
EpayoutRW = mean(EpayoutRWRN_all(:,1));    
EpayoutRN = mean(EpayoutRWRN_all(:,2));
disp(['The real world probability call option payout is ',num2str(EpayoutRW),' The risk neutral probability call option payout is ', num2str(EpayoutRN)]);
