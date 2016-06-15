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


end
B=rem(A,10);
spy(B)
pause(1)
C=rem(A,9);
spy(C)
pause(1)
D=rem(A,8);
spy(D)
pause(1)
E=rem(A,7);
spy(E)
pause(1)
F=rem(A,6);
spy(F)
pause(1)
G=rem(A,5);
spy(G)
pause(1)
H=rem(A,4);
spy(H)
pause(1)
I=rem(A,3);
spy(I)
pause(1)
J=rem(A,2);
spy(J)
pause(1)



 
%this script is similar to problem two however this time instead f changing
%the graph to display each row seperately, i have changed the graph so that
%it will graph the remainder with respect to 10 then 9 then 8 and so on and
%so fourth
