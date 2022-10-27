function [L U x] = DoolittleMethod(A, b)

%
% DoolittleMethod(A)
% LU Factorization (Doolittle method)
%
[n m] = size(A);

L = zeros(n,n);
U = zeros(n,n);

for i = 1:n
    L(i,i) = 1;
    for j = i:n
        U(i,j) = A(i,j);
    end
end
if(L(i,i)*U(i,i)) == 0
    disp('Facrotization impossible');
    return;
end
for j = 2:n
    U(1,j) = A(1,j)/L(1,1);
    L(j,1) = A(j,1)/U(1,1);
end

for i = 2:n
    if(L(i,i)*U(i,i)) == 0
        disp('Factorization impossible');
        break;
    end
    for j = i:n
        U(i,j) = A(i,j);
        for k = 1:i-1
           U(i,j) = U(i,j) - L(i,k)*U(k,j);
        end
        U(i,j) = U(i,j)/L(i,i);
    end
    for j = i+1:n
        L(j,i) = A(j,i);
        for k = 1:i-1  
           L(j,i) = L(j,i) - L(j,k)*U(k,i);
        end
        L(j,i) = L(j,i)/U(i,i);
    end 
end
x = zeros(n,1);
y = zeros(n,1);

y(1) = b(1);
for i = 2:n
   y(i) = b(i);
   for j = 1:(i-1)
      y(i) = y(i) - L(i,j)*y(j); 
   end
end

x(n) = y(n)/U(n,n);
for i = n-1:-1:1
    x(i) = y(i);
    for j = i+1:n
        x(i) = x(i) - U(i,j)*x(j);
    end
    x(i) = x(i)/U(i,i);
end
end