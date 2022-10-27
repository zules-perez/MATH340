function y = HornerMethod(a, x)
% HornerMethod(a, x)

% Zulema Perez
% Math 340-01

y = 0;
z = 0;

n = length(a);
a = a(n:-1:1);
y = a(n);
z = a(n);

for j = n - 1 : -1 : 2
    y = x.*y + a(j);
    z = x.*z + y;
end
y = x*y + a(1);
fprintf('P(xo) = %f\nP''(xo) = %f\n', y, z);
end

