function [ one_norm, two_norm, inf_norm ] = three_norms( a )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
one_norm = sum(abs(a));
two_norm = sqrt(sum(a.^2));
inf_norm = max(abs(a));
end

