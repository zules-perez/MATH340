function x = JacobiMethod(A,b,Tol,N)
%% JacobiMethod(A,b,Tol,N)
% Math 340
% Zulema Perez
%

n = size(A,1);
x = zeros(n,1);
x_0 = zeros(n,1);
k = 1;

while (k <= N)
    for i = 1:n
        s = 0;
        for j = 1:n
            if(j ~= i)
                s = s + (A(i,j)*x_0(j));
            end
         end
         x(i) = (b(i) - s)/A(i,i);
    end
    if(norm(x - x_0) < Tol)
        fprintf('Tol of %i met at k = %i Iterations\n\n',Tol, k);
        disp('Approximate solution: ');
        return;
    end
    k = k+1;
    for i = 1:n
        x_0(i) = x(i); 
    end
end
if(norm(x - x_0) > Tol || k > N)
    disp('Maximum number of iterations exceeded');
end
end
