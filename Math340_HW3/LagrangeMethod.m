function p = LagrangeMethod(x, y, w)

n = length(x);

p = zeros(size(w));

for i = 1:n
    u = ones(size(w));
    for j = [1:i-1 i+1:n]
    u = (w-x(j))./(x(i)-x(j)).*u;
    end
    p = p + u*y(i);
end
end