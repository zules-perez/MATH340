%%
% Zulema Perez
% Math 340-01
% Homework 5


%% Clear everything
clc ; clear all; close all

%%
% Problem 2 (a)
% Romberg Integration
%

a = -2;
b = 2;
n = 5;

syms x;

f =@(x) 1/sqrt(2*pi)*(exp(-(x.^2)/2));
format long
R = RombergIntegTrap(f, a, b, n)


%%
% Problem 2(c)
% Composite Trapezoidal Rule
%
a = -2;
b = 2;

syms x;

format long

f =@(x) 1/sqrt(2*pi)*(exp(-(x.^2)/2));
A = cdf('Normal',2,0,1) - cdf('Normal',-2,0,1);

for n=[1 2 4 8 16 32 64 128 256]
    XI = CompTrapRule(f, a, b, n);
n
    abs(A-XI)
end


%%
% Problem 2 (c)
% Romberg Integration
%

a = -2;
b = 2;
level = 9;

syms x;
f =@(x) 1/sqrt(2*pi)*(exp(-(x.^2)/2));

format long
R = RombergIntegTrap(f, a, b, level);
A = cdf('Normal',2,0,1) - cdf('Normal',-2,0,1);

r1 = R(:,1);
abs(A-r1)
   0.954499736103642



%%
% Problem 2(d)
% Composite Simpson's Rule
%

a = -2;
b = 2;
syms x;

f =@(x) 1/sqrt(2*pi)*(exp(-(x.^2)/2));
A = cdf('Normal',2,0,1) - cdf('Normal',-2,0,1);
format long
for n=[1 2 4 8 16 32 64 128]
    XI = CompSimpsonsRule(f, a, b, n);
n
    abs(A-XI)
end