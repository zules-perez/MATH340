function [t,w] = RungeKuttaFourth(f, a, b, n, alpha)
%%
% [t,w] = RungeKuttaFourth(f, a, b, n, alpha)
%
% Zulema Perez
% Math 340-01
% Last update: 
%%

h = (b-a)/n;
t = [a zeros(1,n)];
w = [alpha zeros(1,n)];

for i = 2:n+1
    K(1) = h*f(t(i-1),w(i-1));
    K(2) = h*f(t(i-1) + h/2, w(i-1) + K(1)/2);
    K(3) = h*f(t(i-1) + h/2, w(i-1) + K(2)/2);
    K(4) = h*f(t(i-1) + h, w(i-1) + K(3));
    
    w(i) = w(i-1)+(K(1)+2*K(2)+2*K(3)+K(4))/6;
    t(i) = a + (i-1)*h;
end

end