%%
% Zulema Perez
% Math 340-01
% Homework 6
% Spring 2018
% Due: 4/20/2018

%% Clear everything
clc; clear all; close all

%%
% Problem 1(a)
% Forward Euler 
%   
a = 0;
b = 10;
n = 40;
alpha = 1;

syms t y;

f =@(t,y) y*cos(t);

[t,w] = ForwardEuler(f, a, b, n, alpha)

w(1:10)'
%%
% Problem 1(b)
% Backward Euler 
%  

a = 0;
b = 10;
n = 40;
alpha = 1;

syms t y;
g =@(t,y,h) y/(1-cos(t)* h);
f =@(t,y) y*cos(t);

[t,w] = BackwardEuler(g, a, b, n, alpha)
w(1:10)'

%%
% Problem 1(c)
% Midpoint Method 
% 

a = 0;
b = 10;
n = 40;
alpha = 1;

syms t y;

f =@(t,y) y*cos(t);

[t,w] = MidpointMethod(f, a, b, n, alpha)

w(1,:)'

%%
% Problem 1(d)
% Fourth Order Runge-Kutta Method
%  

a = 0;
b = 10;
n = 40;
alpha = 1;

syms t y;

f =@(t,y) y*cos(t);

[t,w] = RungeKuttaFourth(f, a, b, n, alpha)

w(1:10)'
%%
% Problem 1(e)
% Plot of all the curves with the true solution 
%

a = 0;
b = 10;
n = 40;
alpha = 1;

syms t y;

f =@(t,y) y*cos(t);
g =@(t,y,h) y/(1-cos(t)* h);

[t,w1] = ForwardEuler(f, a, b, n, alpha);
[t,w2] = BackwardEuler(g, a, b, n, alpha);
[t,w3] = MidpointMethod(f, a, b, n, alpha);
[t,w4] = RungeKuttaFourth(f, a, b, n, alpha);
y_true = exp(sin(t));

figure
plot(t,w1,'DisplayName','ForwardEuler'), hold on
plot(t,w2,'DisplayName','BackwardEuler'), hold on
plot(t,w3,'DisplayName','Midpoint' ), hold on
plot(t,w4,'DisplayName','RungeKuttaFourth'), hold on
plot(t,y_true,'DisplayName','ytrue'), hold on
legend()
hold off

%%
% Problem 1(f)
% Create a table with the absolute errors for each method
%  
a = 0;
b = 10;
alpha = 1;

syms t y;
t = 10;
f =@(t,y) y*cos(t);
g =@(t,y,h) y/(1-cos(t)* h);

y_true = exp(sin(t));
 
T = cell(5);
fprintf('\n n        ForwardEuler Error         BackwardEuler Error         MidPoint Error         RKF Order_4 Error\n');
for n = [40 80 160 320]
   [t1 w1] = ForwardEuler(f,a,b,n,alpha);
   [t2 w2] = BackwardEuler(g,a,b,n,alpha);
   [t3 w3] = MidpointMethod(f,a,b,n,alpha);
   [t4 w4] = RungeKuttaFourth(f,a,b,n,alpha);
   
    err1 = abs(y_true-w1(end));
    err2 = abs(y_true-w2(end));
    err3 = abs(y_true-w3(end));
    err4 = abs(y_true-w4(end));
    T(n, :) = {n err1 err2 err3 err4};
    fprintf('%d\t\t\t%d\t\t\t\t%d\t\t\t  %d\t\t\t  %d\n', T{n, :});
end
   
%%
% Problem 2 part(b)(c)
% ForwardEulerSystems
% Plot the results against the true solution

a = 0;
b = 1;
n = 10;

syms t y;
alpha = [2,2]';

f =@(t,y)[y(2); -y(1)+3*y(2)+6*exp(-t)];

[t,w] = ForwardEulerSystems(f, a, b, n, alpha)

y_true = 2*exp(2*t) - exp(t) + exp(-t);

figure
plot(t,w(1,:),'DisplayName','ForwardEulerSystem'), hold on
plot(t,y_true,'DisplayName','ytrue'), hold on
legend()
hold off

%%
% Problem 3
% Gussian Elimination with Backward Substitution
A = [1 1 0 1;2 1 -1 1 ;-1 2 3 -1;3 -1 -1 2];

b = [2 1 4 -3]';
%X = [A b];
%rref(X)
x = GaussianEliminationBS(A,b)'

