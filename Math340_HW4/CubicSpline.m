function s = CubicSpline(x, y, w)

% Zulema Perez
% Math 340-01


n = length(x);

a = zeros(n,1);
h = zeros(n,1);

for i = 1:n-1
    a(i) = y(i);
    h(i) = x(i+1) - x(i);
end

alpha = zeros(n,1);

for i = 2:n-1
    alpha(i) = (3/h(i))*(a(i+1)-a(i)) - (3/h(i-1))*(a(i)- a(i-1));
end

l = zeros(n,1);
z = zeros(n,1);
u = zeros(n,1);

l(1) = 1;
u(1) = 0;
z(1) = 0;

for i = 2:n-1
    l(i) = 2*(x(i+1) - x(i-1))- h(i-1)*u(i-1);
    u(i) = h(i)/l(i);
    z(i) = (alpha(i) - h(i-1)*z(i-1))/l(i);
end

c = zeros(n,1);

l(n) = 1;
c(n) = 0;
z(n) = 0;

b = zeros(n,1);
d = zeros(n,1);

for j =(n-1):-1:1
    c(j) = z(j) - u(j)*c(j+1);
    b(j) = ((a(j+1) - a(j))/h(j)) - ((h(j)*(c(j+1) + 2*c(j)))/3);
    d(j) = (c(j+1) - c(j))/(3*h(j));
end

s = zeros(size(w));

for j = (n-1):-1:1
    
    s = a(j) + b(j)*(w-x(j)) + c(j)*(w-x(j)).^2 + d(j)*(w-x(j)).^3
    
end

end
