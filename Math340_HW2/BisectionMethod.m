function p = BisectionMethod(f,a,b,Tol,N)

% Zulema Perez
% Math 340-01

p = 0;

i = 1;

FA = f(a);

    while i <= N
        p = a + (b - a) /2;
        FP = f(p);
    
        if FP == 0 || (b - a)/2 < Tol
            fprintf('Biscetion Method Root at x = %f\n# of Iterations = %i \n',p, i);
            return;
        end
        i = i+1;
        if FA*FP > 0
          a = p;
          FA = FP;
        else
           b = p;
        end
        
    end
    fprintf('Method failed after N interations, N = %i\n\n', N);
end
