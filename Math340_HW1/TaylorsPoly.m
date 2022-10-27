function p = TaylorsPoly(x,N)

% p = TaylorPoly(x,N)
% Calculates the Nth Taylor Polynomial for f(x) = e^x
% Zulema Perez
% Math 340-01

% Intitialize p to be zero

p = 0;


for k = 0:N
    y(:, k + 1) = x.^(k + 1) ./ factorial(k + 1);
    
end

p = 1 + sum(y);

end

