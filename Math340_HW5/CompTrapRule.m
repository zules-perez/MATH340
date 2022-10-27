function XI = CompTrapRule(f, a, b, n)
%%
% XI = CompTrapRule(f, a, b, n)
%
% Zulema Perez
% Math 340-01
% Last update: 
%%

h = (b-a)/n;
j=0;
XI = f(a) + f(b);

for i = 1:n-1
    j = j+1;
   X = a + i*h;
   
   XI = XI + 2*f(X);
end
XI = h/2*XI;
end