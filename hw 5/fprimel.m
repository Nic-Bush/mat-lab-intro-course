function [ fprimel ] = fprimel( f, a, b, n )
h = (b-a)/n;
fprimel = zeros(1,n);
x = linspace(a,b,n); %makes n points between a and b

for j=2:n
    fprimel(j) = f(x(j)) - f(x(j-1));
end
fprimel = fprimel./h;

end

