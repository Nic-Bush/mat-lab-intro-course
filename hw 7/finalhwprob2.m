n=150;

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
B = rem(A,2);
spy(B)
pause(.05)%should now run for 7.5 seconds

end
%this is pretty much the same code as number 4 in hw 4 but with a pause
%command in the middle and the spy command is in the while loop now.