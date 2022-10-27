% Zulema Perez
% Math 340-01


%% Clear everything
clc; clear all; close all

%%
% Problem # 1.
% part (a),(b)
%

x = [-3 -2 -1 0 1 2 3 4];
y = [4 6 7 4 2 0 -1 2];

dy = [1 -1 2 -3 2 -3 0 1];

w = -3:.01:4;

p = HermiteInterpol(x, y, dy, w)

syms X;

p2 = HermiteInterpol(x, y, dy, X);

simplify(p2);

figure, plot(w,p), hold on, plot(x,y,'o')

%%
% Problem # 2
% part (a).
%

x = [2 3 5];

y = [0 -1 3];

syms w;

w = 2:.01:5;

s = CubicSpline(x, y, w)


syms X;

s2 = CubicSpline(x,y,X);

figure, plot(w,s), hold on, plot(x,y,'o')

%%
% Problem #3
% 
syms x;

f = @(x) log(x);

x_o = 1;

[n,h,fd, bd, cd] = Differences(f,x_o);

T=array2table([n,h,fd,bd,cd],'VariableNames',{'n' 'h' 'Forward_Difference' 'Backward_Difference' 'Centered_Difference'})
