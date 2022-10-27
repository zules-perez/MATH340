function p = SteffensenMethod(g, po, Tol, N)

% SteffensenMethod(g, po, Tol)
% Zulema Perez
% Math 340-01


p = 0;
i = 1;

while i <= N
    p1 = g(po);
    p2 = g(p1);
    p = po-(p1 - po)^2/(p2 - 2*p1 + po);
    
    if abs(p - po) < Tol
        fprintf('Fixed-Point solution at x = %f\n# of Iterations = %i\n', p, i);
        return;
    end
    i = i + 1;
    po = p;
end
    fprintf('Method failed after N Iterations, N = %i\n',N);
end

