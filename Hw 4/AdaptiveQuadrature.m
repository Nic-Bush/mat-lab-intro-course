function [ A ] = AdaptiveQuadrature( func, a, b, n, tol )
% This recusive function will either return a Trapezoidal Rule
% approximation, or the sum of two Trapezoidal Rule approximations.
hold on;
% If using twice as many Trapezoids ...
A = hw4_trap_comp(func,a,b,n);
B = hw4_trap_comp(func,a,b,2*n);

% ... hardly changes the result, then return the current approximation
if abs(A - B) < tol
    % The following section simply draws the Trapezoids
    h = (b-a)/n;
    x = a:h:b;
    y = func(x);
    line([x(1) x(1)], [0 y(1)], 'Color', 'k'); %left edge
    for i = 2:1:n
        line([x(i) x(i)], [0 y(i)], 'Color', 'k'); %vertical edges
        line([x(i-1) x(i)], [y(i-1) y(i)], 'Color', 'k'); %diagonal edges
    end
    pause(1) %for pseudo-animation
else %split at midpoint
    m = (a + b) / 2; 
    A = AdaptiveQuadrature( func, a, m, n, tol ) + ...
        AdaptiveQuadrature( func, m, b, n, tol );
end

end

