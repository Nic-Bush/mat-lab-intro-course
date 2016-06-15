function [ spectralradius ] = spectralradius( vector )
%finds spectral radius
X = eig(vector);
i=1;
spectralradius = 0;
while (i <= length(X))
    if (spectralradius<abs(X(i)))
        spectralradius = abs(X(i));
    end
    i= i+1;
end
end

