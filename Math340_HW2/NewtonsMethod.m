function p = NewtonsMethod(f, f1, po, Tol, N)

% Zulema Perez
% Math 340-01


p = 0;

i = 1;

while i <= N
    p = po - f(po)/f1(po);
    if abs((p-po)) < Tol
        fprintf('Newton''s Method Root at x = %f\n# of Iterations = %i\n', p, i);
        return;
    end
    i = i + 1;
    po = p;
end
    fprintf('Method failed after N Iterations, N = %i\n',N);
end