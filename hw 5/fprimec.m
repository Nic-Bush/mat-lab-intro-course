function [ fprimec ] = fprimec( f, a, b, n )

h = (b-a)/n;
fprimec = zeros(1,n);
x = linspace(a,b,n); %makes n points between a and b
           
for j = 2:n-1 %calculate for all but boundary values
    % Finite Difference Scheme (centered)
    fprimec(j) = f( x(j+1) ) - f( x(j-1) );
end

fprimec(1) = -3*f( x(1) ) + 4*f( x(2) ) - f( x(3) );
fprimec(n) = 3*f( x(j) ) - 4*f( x(j-1) )+ f( x(j-2) );
fprimec = fprimec ./ (2*h);

end

