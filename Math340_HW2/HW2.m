
% Zulema Perez
% Math 340-01


%% Clear everything
clc; clear all; close all

%%
% Section: 2.1 Problem # 1.
% part (a)

f = @(x) x^3 - x - 1;

a = 1;
b = 2;

Tol = 10^-4;

N = 14;

p = BisectionMethod(f, a, b, Tol, N);

%%
% Section 2.2 Problem # 2.

g = @(x) 2.^-x;

po = 1/3;

Tol = 10^-4;

N = 16;

% a = 1/3;
% b = 1;

p = FixedPointIter(g, po, Tol, N);

% max(g(a))
% min(g(b))

%%
% Section 2.3 Problem # 3(a)
syms x;


f = @(x) 216.8*x - 1 + (1 + x)^-313;

f1 = matlabFunction(diff(f(x)));

po = .5;

Tol = 10^-4;

N = 25;

p = NewtonsMethod(f, f1, po, Tol, N);

%%
% Section 2.3 Problem # 3(b)

syms x;


f = @(x) 164.71*x - 1 + (1 + x)^-360;

f1 = matlabFunction(diff(f(x)));

po = .5;

Tol = 10^-4;

N = 25;

p = NewtonsMethod(f, f1, po, Tol, N);

%%
% Section 2.4 Problem # 4(a)

syms x;

f = @(x) 6*x^5 + 9*x^4 - 2*x^3 - 5*x^2 + 1;

f1 = matlabFunction(diff(f(x)));

a = -2;
b = -1;

po = -1.5;

Tol = 10^-5;

N = 20;

p = BisectionMethod(f, a, b, Tol, N);

p = NewtonsMethod(f, f1, po, Tol, N);

%%
% Section 2.4 Problem 4(b)
syms x;

g = @(x) x - ((6*x^5 + 9*x^4 - 2*x^3 - 5*x^2 + 1)/(30*x^4 + 36*x^3 - 6*x^2 - 10*x));

po = -2;

Tol = 10^-5;

N = 20;

% a = -2;
% b = -1;

p = FixedPointIter(g, po, Tol, N);

 % max(g(a))
 % min(g(b))

%%
% Section 2.4 Problem # 4(c)

syms x;


f = @(x) x^2 * (x-1);

f1 = matlabFunction(diff(f(x)));

po = 1;

Tol = 10^-5;

N = 10;

p = NewtonsMethod(f, f1, po, Tol, N);
