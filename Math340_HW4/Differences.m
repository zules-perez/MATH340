function [n,h,fd, bd, cd] = Differences(f,x_o)

% Zulema Perez
% Math 340-01


j = 20;
n = zeros(j,1);
fd = zeros(j,1);
bd = zeros(j,1);
cd = zeros(j,1);
h = zeros(j,1);


for i = 1:j
    
n(i) = i;
h = 10.^-n;
fd(i) = (f(x_o + h(i)) - f(x_o))/h(i);
bd(i) = (f(x_o) - f(x_o - h(i)))/h(i);
cd(i) = (f(x_o + h(i)) - f(x_o - h(i)))/(2*h(i));

end

end