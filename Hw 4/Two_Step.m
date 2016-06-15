function [ fprime ] = Two_Step( f, a, b, n )
% Nic 
% 2-10-2014
% Math 50
% Lecturer:  Derek
% 
% INPUTS:  function f, interval [a,b], number of grid points n
% OUTPUT:  vector of approximate derivative values

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initialization
h = (b-a)/n;         %step size
fprime = zeros(1,n); %derivative array
x = linspace(a,b,n); %makes n points between a and b
y = f(x);            %original function


for j = 2:n-1 %calculate for all but last values
     
    fprime(j) = f( x(j+1) ) - f( x(j-1) );
end

% right & left boundry

fprime = fprime ./ (2*h);
fprime(n) = (f( x(j) ) - f( x(j-1) ))/h;
fprime(1) = (f(x(2)) - f(x(1)))/h;
% display results

plot(x,y,x,fprime)
legend('original function','first derivative')
    title('A function and its derivative')
    xlabel('x')
    ylabel('y')

end

