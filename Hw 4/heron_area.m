function [ A ] = heron_area( a, b, c )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
s = (a+b+c)/2;
A = sqrt(s*(s-a)*(s-b)*(s-c));

end

