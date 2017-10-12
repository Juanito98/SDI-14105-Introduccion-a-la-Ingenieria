function [ r2 ] = rCuadrada( y, yEstimada )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

ssr = sum((y - yEstimada).^2);
sst = sum((y - mean(y)).^2);
r2 = (1 - ssr) / sst;

end

