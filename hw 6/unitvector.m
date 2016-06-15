function [ one_Norm, two_Norm, infinity_Norm ] = unitvector( vector )
%takes in a vector and outputs its unit vector using the one norm, two norm
%and infinity norm
[m, n] = size(vector);
if ((norm(vector, 1)== 0))
    one_Norm = zeroes(m, n);
    
else one_Norm = (vector)./norm(vector,1);
    
    
end
if ((norm(vector, 2)== 0))
    two_Norm = zeroes(m, n);
    
else two_Norm = (vector)./norm(vector,2);
end
if ((norm(vector, Inf)== 0))
    infinity_Norm = zeroes(m, n);
    
else infinity_Norm = (vector)./norm(vector,Inf);
end

end

