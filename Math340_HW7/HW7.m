%%
% Zulema Perez
% Math 340-01
% Homework 7


%% Clear everything
clc; clear all; close all

%% Problem 1(a)
% LU Factorization (Doolittle Mthod)
%
A = [6 2 1 -1; 2 4 1 0; 1 1 4 -1; -1 0 -1 3];
b = [0 7 -1 -2];
format short;
[L U x] = DoolittleMethod(A, b)

%[L U] = lu(A)

%% Clear everything
clc; clear all; close all

%% Problem 1(c)
% LDL^T factorization
%

A = [6 2 1 -1; 2 4 1 0; 1 1 4 -1; -1 0 -1 3];
b = [1 -1 2 -2];

format short;
[L D x] = LDLFactorization(A, b)
%D = diag(D)
%[L,D] = ldl(A)

%% Clear everything
clc; clear all; close all

%% Problem 1(e)
% Cholesky factorization (LL^T factorization)
% 

A = [6 2 1 -1; 2 4 1 0; 1 1 4 -1; -1 0 -1 3];
b = [3 1 2 -1];

format short;

[L x] = CholeskyFactorization(A, b)

%L = chol(A)'


%% Clear everything
clc; clear all; close all

%% Problem 3(c)
%  Jacobi Method
%

A = [4 1 -1 1;1 4 -1 -1; -1 -1 5 1;1 -1 1 3.5];
b = [-2 -1 0 1]';
Tol = 10^-5;
N = 25;

x = JacobiMethod(A,b,Tol,N)
%p = inf
%n = norm(x,p)

%% Clear everything
clc; clear all; close all

%% Problem 3(d)
%  Gauss-Seidel Method
%

A = [4 1 -1 1;1 4 -1 -1; -1 -1 5 1;1 -1 1 3.5];
b = [-2 -1 0 1]';
Tol = 10^-5;
N = 15;

x = GaussSeidelMethod(A,b,Tol,N)

%% Clear everything
clc; clear all; close all

%% Problem 3(e)
%  SOR Method
%

A = [4 1 -1 1;1 4 -1 -1; -1 -1 5 1;1 -1 1 3.5];
b = [-2 -1 0 1]';
Tol = 10^-5;
N = 115;

for w = [0.9 1.1 1.2 1.5 1.9]
    w
    x = SORMethod(A,b,Tol,N,w)
end

