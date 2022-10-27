function [t,w] = ForwardEulerSystems(f, a, b, n, alpha)
%%
% [t,w] = ForwardEulerSystems(f, a, b, n, alpha)
%
% Zulema Perez
% Math 340-01
% Last update: 
%%

h = (b-a)/n;
t = a;
w = alpha;

for i = 2:size(alpha)
    w(i,1) = alpha(i);
end

for i = 2:n+1
   w(:,i) = w(:,i-1) + h*f(t(i-1),w(:,i-1));
   t(i) = a + i*h;
end

end