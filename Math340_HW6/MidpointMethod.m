function [t,w] = MidpointMethod(f, a, b, n, alpha)
%%
% [t,w] = MidpointMethod(f, a, b, n, alpha)
%
% Zulema Perez
% Math 340-01
% Last update: 
%%
h = (b-a)/n;
t = [a zeros(1,n)];
w = [alpha zeros(1,n)];

for i = 1:n
   w(i+1) = w(i) + h*f(t(i)+ h/2, w(i) + h/2 * f(t(i),w(i)));
   t(i+1) = t(i) + h;
end

end