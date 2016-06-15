n=1000;

A=zeros(n,n);

A(:, 1) = 1;

j=2;

k=2;


while (j<=n)



k=2;


 while (k<=j)



A((j),(k)) =(A((j-1),(k-1)) +A((j-1),(k)));

k=k+1;


 end
 


j=j+1;


end



B = rem(A,2);

spy(B);


%the spy command plots all non zero elements in a matrix and allows for one

%to examine patterns., as we increase the number n, we start to see more triangles in %the matrix
