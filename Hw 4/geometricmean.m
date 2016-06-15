function [ geomean ] = geometricmean( vector_of_pos_nums )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
geomean = nthroot(prod(vector_of_pos_nums),length(vector_of_pos_nums));
end

