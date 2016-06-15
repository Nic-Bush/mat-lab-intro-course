function [ A ] = hw4_trap_comp( func, a, b, n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

A=0;
x = linspace(a,b,n);


    m=1;
    dist = (b-a)/n;
while(m<n)
   A= A + dist*((func(x(m))+func(x(m+1)))/2); 
   m=m+1;
end
end

