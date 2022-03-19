%% Question 2 
clc; clear all; close all;
%% Question 2 - b
Zt = p1q2a_Lee(0.04, 10, 100, 1);

%% Question 2 - c 
N = [10:1000]';
Zt_c = zeros(size(N,1),2);
for i = 1:size(N,1)
    Zt_c(i,1) = N(i);
    Zt_c(i,2) = p1q2a_Lee(0.04, 10, 100, N(i));
end
% plot the relationship between N and Zt
figure()
plot(Zt_c(:,1),Zt_c(:,2));
title('As time steps get smaller, the Zt gets closer to F');
xlabel('time steps, subinterval');
ylabel('Price of Zt');

%% Question 2 - e
D = zeros(size(N,1),2);
for i = 1:size(N,1)
    D(i,1) = N(i);
    D(i,2) = p1q2d_Lee(0.04, 10, 100, N(i), 0.0000001);
end

figure()
plot(D(:,1),D(:,2));
title('As time steps get smaller, the duration gets closer to zero');
xlabel('time steps, subinterval');
ylabel('Duration');


