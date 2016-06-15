x = [-1, 1, 2];
y = [-4, -2, 5];
z = polyfit(x,y,2)
%2x^2 + x - 5
x=linspace(-1,4,100);
y = (2*x).^2 +x -5;
plot(x,y)