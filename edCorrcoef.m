function [ c ] = edCorrcoef( x, y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    c(1, 1) = 1;
    c(2, 2) = 1;
    xMean = mean(x);
    yMean = mean(y);
    diffX = x - xMean;
    diffY = y - yMean;
    c(1, 2) = sum(diffX.*diffY) / sqrt(sum(diffX.^2) * sum(diffY.^2));
    c(2, 1) = c(1, 2);
end

