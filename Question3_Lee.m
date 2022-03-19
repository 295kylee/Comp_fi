%% Quesiton 3 
clc; clear all; close all;

%% Question 3 - b
F = p1q3a_Lee(20, 0.02, 2, 12);
figure() % the figure may show it has a linear relationship but if I use
% ip with 1:360, it presents the exponential curve
plot(F(:,1),F(:,2));
title('Forward price on given date');
xlabel('Period, monthly');
ylabel('Price of the forward'); 

%% Question 3 - c
% plot long position in a forward contract on the stock referenced part a

F_5 = F(20,2); % F_5, delivery date is 5 month away 
ST = [0:40]'; % price of the stock at T on the horizontal axis range is 0 to 40
payout = ST - F_5; % Payout
table()
plot(ST, payout);
hold on
yline(0,':');
title('Payout of forward contracts, Long position');
xlabel('Price of Stock at T');
ylabel('Payout'); 
hold off

%% Question 3 - d
Mt = p1q3d_Lee(50, 0.04, 40, 5, 2, 12);

%% Question 3 - e
ShortPos = p1q3e_Lee(20, .05, 15, 5, 2, 12, .03);