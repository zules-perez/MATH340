function x = GaussianEliminationBS(A,b)

% x = GaussianEliminationBS(A,b)
% Gaussian Elimination with Back Substitution
% Zulema Perez
% Math 340-01
% Spring 2018

n = length(b); % max dimension of b

for i = 1:(n-1)
    for p = i+1:n
       % if p != i then swap == E(i) <--> E(p)
       if A(p,i) ~= 0
       % Atemp == A(p row : all columns)
            Atemp = A(p,:); 
       % A(p row : all columns) == A(i row : all columns)
            A(p,:) = A(i,:);
       % A(i row : all columns) == Atemp
            A(i,:) = Atemp;
       % b == A(n,n+1)
       % swap b vector using btemp
            btemp = b(p);
            b(p) = b(i);
            b(i) = btemp;
            break;
        % if no integer p can be found
        elseif p == n
            fprintf('No unique solution exists');
            return
        end
    end
    
    for j = i+1:n
        m = A(j,i)/A(i,i);
    % E(j) - m(j,i)*E(i) --> E(j)
        A(j,:) = A(j,:) - m*A(i,:); 
    %  b == A(n,n+1)
        b(j) = b(j)-m*b(i);
    end
end

if A(n,n) == 0
    fprintf('No unique solution exists');
    return;
end
% back substitution
% b == A(n,n+1)
x(n) = b(n)/A(n,n);
for i = n-1:-1:1
    sumup = 0;
        for j = i+1:n
            sumup = sumup + A(i,j)*x(j);
        end
     x(i) = (b(i)-sumup)/A(i,i);
end
end