function XI = CompSimpsonsRule(f, a, b, n)

%%
% XI = CompSimpsonsRule(f, a, b, n)
%
% Zulema Perez
% Math 340-01
% Last update: 
%%

h = (b-a)/n;

XI0 = f(a) + f(b);
XI1 = 0;
XI2 = 0;
j = 0;
for i = 1:n-1
    j= j+1;
   X = a + i*h;
   if mod(i,2) == 0
       XI2 = XI2 + f(X);
   else
       XI1 = XI1 + f(X);
   end
end
XI = h*(XI0+2*XI2+4*XI1)/3;
end