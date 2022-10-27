function [L x] = CholeskyFactorization(A, b)
%
% L = CholeskyFactorization(A)
% (LL^T Factorization)
%

n = size(A,1);
L = zeros(n,n);

L(1,1) = sqrt(A(1,1)); 

for j = 2:n
    L(j,1) = A(j,1)/L(1,1);
end

for i = 2:n-1
    s = 0;
   for k = 1:i-1
       s = s + (L(i,k)*L(i,k));
   end
   L(i,i) = sqrt(A(i,i) - s);
   for j = i+1:n
       s = 0;
       for k = 1:i-1
           s = s + (L(j,k)*L(i,k));
       end
       L(j,i) = A(j,i) - s;
       L(j,i) = L(j,i)/L(i,i);
   end
end
s = 0;
for k = 1:n-1
   s = s + (L(n,k)*L(n,k));
end
L(n,n) = sqrt(A(n,n) - s);

x = zeros(n,1);
y = zeros(n,1);

y(1) = b(1)/L(1,1);

for i = 2:n 
   y(i) = b(i);
   for j = i+1:n
      y(i) = y(i) - L(i,j)*y(j);
   end
   y(i) = y(i)/L(i,i);
end

x(n) = y(n)/L(n,n);

for i = n-1:-1:1
    x(i) = y(i);
    for j = i+1:n
        x(i) = x(i) - L(j,i)*x(j);
    end
    x(i) = x(i)/L(i,i);
end

end