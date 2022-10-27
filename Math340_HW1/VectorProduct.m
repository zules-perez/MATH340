function product = VectorProduct(n,x,x1)
% Zulema Perez
% Math 340-01

product = 1;

for i = 0:n
    y = (x - x1);
    product = product.* y;
end
disp(product)
end
