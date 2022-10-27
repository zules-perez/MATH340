function [t,w] = BackwardEuler(g, a, b, n, alpha)
%%
% [t,w] = BackwardEuler(f, a, b, n, alpha)
%
% Zulema Perez
% Math 340-01
% Last update: 
%%

h = (b-a)/n;
t = a:h:b;
w = [alpha zeros(1,n)];

for i = 1:n
    w(i+1) = g(t(i+1),w(i),h);
end

end