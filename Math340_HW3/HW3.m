% Zulema Perez
% Math 340-01


%% Clear everything
clc; clear all; close all

%%
% Problem # 1 part (a)
% Steffensen's Method

syms x;

g = @(x) 2.^-x;

po = 1/3;

Tol = 10^-4;

N = 3;

% a = 1/3;
% b = 1;

p = SteffensenMethod(g, po, Tol, N);

% max(g(a))
% min(g(b))

%% 
% Problem # 2 part(a)
% Horner's Method

syms x;

a = sym2poly(2*x^4 - 7*x^3 + 5*x - 10);

x = 2 ;

y = HornerMethod(a, x);

syms w;
p = @(w) 2*w.^4 - 7*w.^3 + 5*w - 10;
w = -2:0.1:2;

plot(w,p(w))
hold on
plot(x,y,'o')

%%
% Problem # 3 part(a)
% Lagrange Method

x = [-3 -2 -1 0 1 2 3 4];
y = [4 6 7 4 2 0 -1 2];  

%w = 8;
w = -5:0.1:5;
p = LagrangeMethod(x, y, w)


plot(w,p)
hold on
plot(x,y,'o')

%%
% Problem # 3 part(d)
% Interpolating Polynomials using
% Newton's Divided-Difference formula

x = [-3 -2 -1 0 1 2 3 4];
y = [ 4 6 7 4 2 0 -1 2];  

%w = 8;
w = -5:0.1:5;

p = NewtonDDMethod(x, y, w)

plot(w,p)
hold on 
plot(x,y,'o')
