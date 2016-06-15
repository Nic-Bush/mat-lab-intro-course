function [ fprime ] = FD_Left( f, a, b, n )
% Nic
% 2-10-2014
% Math 50
% Lecturer:  Derek
% 
% INPUTS:  function f, interval [a,b], number of grid points n
% OUTPUT:  vector of approximate derivative values
% 
% This function will use the right-hand finite difference scheme to
% approximate derivatives.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initialization
h = (b-a)/n;
fprime = zeros(1,n); %derivative array
x = linspace(a,b,n); %makes n points between a and b
% im not sure by the wording of the question but i might have been supposed
% to make this work with arrays that i could plug into functions, however
% they would have had lower accuracy and have to be done pre program...
% this just seemed easier
y = f(x);            
%original function this for some reason didnt work 
%when i plugged it in down bellow so i just used the formula instead of 
%this bellow, the graph is still done using this though


for j = 2:n %calculate all but the first value
    fprime(j) = f( x(j) ) - f( x(j-1) ); % fixed the values so it would be 
    %left hand
end
fprime(1) = f(x(2)) - f(x(1));%as the loop will not define what fprime(1) 
%is it must be done outside of the loop


fprime = fprime ./ h;

% display results
hold on;
plot(x,y,x,fprime)

    legend('original function','first derivative')
    title('A function and its derivative')
    xlabel('x')
    ylabel('y')
end

