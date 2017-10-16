function [ r2 ] = rCuadrada( y, yEstimada )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

yPromedio = mean(y);
ssr = sum((y - yEstimada).^2);
sst = sum((y - yPromedio).^2);
r2 = 1 - ssr/sst;
sse = sum((yEstimada - yPromedio).^2);
r2 = sse/sst;
end

