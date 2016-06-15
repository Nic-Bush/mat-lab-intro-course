function [ fprimer ] = fprimer( f, a, b, n )
h = (b-a)/n;
fprimer=zeros(1,n);
x = linspace(a,b,n); %makes n points between a and b
        
for j=1:n-1
    fprimer(j) = f(x(j+1)) - f(x(j));
end

fprimer = fprimer./h;


end

