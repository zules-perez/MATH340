function [t,w] = ForwardEuler(f, a, b, n, alpha)
%%
% [t,w] = ForwardEuler(f, a, b, n, alpha)
%
% Zulema Perez
% Math 340-01
% Last update: 
%%

h = (b-a)/n;
t = [a zeros(1,n)];
w = [alpha zeros(1,n)];

for i = 2:n+1
   w(i) = w(i-1) + h*f(t(i-1),w(i-1));
   t(i) = a + (i-1)*h;
end

end