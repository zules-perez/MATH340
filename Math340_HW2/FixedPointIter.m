function p = FixedPointIter(g,po, Tol, N)

% Zulema Perez
% Math 340-01


p = 0;

i = 1;

    while i <= N
      p = g(po);
      if abs((p - po)) < Tol
          fprintf('Fixed-Point Method Root at x = %f\n# of Iterations = %i\n',p, i);
          return;
      end
      i = i + 1;
      po = p;
    end

    fprintf('Method failed after N iterations, N = %i\n', N);

end