%% Question 4 Conditions
clc; clear all; close all;
S0 = 50; % S0 = the current value of a stock price under real-world probability
B = S0 * 1.5; % Threshold
mu = .12; % mu = trend component
deltat = 1/360; % deltat = change in time 
r = .03; % annualized constant riskfree interest rate
T = 10; % T = Total time period
sigma = .15; % sigmat = variance

%% Question 4 - b
Stdt = p1q4a_Lee(mu, sigma, deltat, T, S0);
figure() 
plot(Stdt(:,2));
title('Price change of the Stock with real world probability');
xlabel('time');
ylabel('Price of the stock'); 

%% Question 4 - d
Time = zeros(2000,1);
T_d = 40; % new time that is given from the question
for i = 1:2000 % Simulating 2000 times
    Time(i) = p1q4c_Lee(mu, sigma, deltat, T_d, S0, B);
end

x = mean(Time);
disp(['It takes on average ',num2str(x),'years for the price to rise 50 percent above its initial value']);

%% Question 4 - e
Te = 2; % 2 Years given from question
S2 = zeros(2000,1); % Simulating 2000 times
for i = 1:2000
    S2(i,1) = p1q4e_Lee(mu, sigma, deltat, Te, S0);
end
S2_a = mean(S2); % Average value after 2 years
disp(['The price of the stock on average is ',num2str(S2_a),' after 2 years']);
