function [L D x] = LDLFactorization(A, b)

% [L D] = LDLFactorization(A)
% LDL^T Factorization
%

% n number of rows
% m number of columns
 n = size(A,1);

L = zeros(n,n);
D = zeros(n,1);
v = zeros(n);

for i = 1:n
    L(i,i) = 1;
end

for i = 1:n
    for j = 1:i-1
       v(j) = L(i,j)*D(j);
    end
    D(i) = A(i,i);
    for j = 1:i-1  
        D(i) = D(i) - L(i,j)*v(j);
    end
    for j = i+1:n
        L(j,i) = A(j,i);
        for k = 1:i-1  
            L(j,i) = (L(j,i) - L(j,k)*v(k));
        end
        L(j,i) = L(j,i)/D(i);
    end
end

x = zeros(n,1);
y = zeros(n,1);
z = zeros(n,1);

y(1) = b(1);

for i = 2:n
    for j = 1:i-1
        y(i) = b(i) - L(i,j)*y(j);
    end
end

for i = 1:n
    z(i) = y(i)/D(i);
end
x(n) = z(n);

for i = n-1:-1:1
    for j = i+1:n
        x(i) = z(i) - L(j,i)*x(j);
    end
end

end