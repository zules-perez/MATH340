function p = HermiteInterpol(x, y ,dy, w)

% Zulema Perez
% Math 340-01


n = length(x);

z = zeros(2*n,1);
Q = zeros(2*n, 2*n);


for i = 1:n
    z(2*i-1) = x(i);
    z(2*i) = x(i);
    Q(2*i-1,1) = y(i);
    Q(2*i,1) = y(i);
    Q(2*i,2) = dy(i);
end

for i=1:n-1
    Q(2*i+1,2) = (Q(2*i+1,1)-Q(2*i,1))./(z(2*i+1)-z(2*i));
    
end

for i = 3:2*n
    for j = 3:i
        Q(i,j) = (Q(i,j-1) - Q(i-1,j-1))./(z(i)- z(i-j+1));
    end
end
format short
p = Q(1,1)*ones(size(w));

for i = 2:2*n
    v = 1;
    for j = 1:i-1
        v = v.*(w-z(j));
    end
    p = p + Q(i,i)*v;
end
end

