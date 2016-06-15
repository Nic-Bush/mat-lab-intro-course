x = linspace(0,1,1000);
y1 = x;
y2 = x.^2;
y3 = x.^3;
y4 = x.^4;
y5 = x.^5;
y6 = x.^6;
%i assume you wanted y = x^6 aswell although it is not stated... it does
%say all 6 graphs when there are only five on the assignment.
subplot(2,3,1)
    plot(x,y1)
    title('x vs y');
    xlabel('x');
    ylabel('y');
subplot(2,3,2)
    plot(x,y2)
    title('x vs y^2');
     xlabel('x');
    ylabel('y');
subplot(2,3,3)
    plot(x,y3)
    title('x vs y^3');
     xlabel('x');
    ylabel('y');
subplot(2,3,4)
    plot(x,y4)
    title('x vs y^4');
     xlabel('x');
    ylabel('y');
subplot(2,3,5)
    plot(x,y5)
    title('x vs y^5');
     xlabel('x');
    ylabel('y');
subplot(2,3,6)
    plot(x,y6)
    title('x vs y^6');
     xlabel('x');
    ylabel('y');