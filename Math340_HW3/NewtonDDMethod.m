function p = NewtonDDMethod(x, y, w)

% NewtonDDMethod(x, y, w)
% Zulema Perez
% Math 340-01


p = 0;
n = length(x);

u = zeros(size(w));

for i = 1:n
   u(i,1) = y(i);
end
%p(:,1) = y';

for i = 2:n
    for j = 2:i
        u(i,j) = (u(i,j-1)-u(i-1,j-1))./(x(i) - x(i-j+1));
    end
end

p = u(1,1)*ones(size(w));
for i = 2:n
    v = 1;
    for j = 1:i-1
        v = v.*(w-x(j));
    end
    p = p + u(i,i)*v;
end
end

