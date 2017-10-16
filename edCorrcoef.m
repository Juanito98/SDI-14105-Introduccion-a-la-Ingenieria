function [ c ] = edCorrcoef( x, y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    c(1, 1) = 1;
    c(2, 2) = 1;
    xMean = mean(x);
    yMean = mean(y);
    diffX = x - xMean;
    diffY = y - yMean;
    n = length(x);
    c(1, 2) = sum(diffX.*diffY) / sqrt(sum(diffX.^2) * sum(diffY.^2));
    c(1, 2) = (n * mean(diffX.*diffY)) / (std(x) * std(y) * (n - 1));
    c(2, 1) = c(1, 2);
end

