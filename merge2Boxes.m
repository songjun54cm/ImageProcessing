function [ box ] = merge2Boxes( box1, box2 )
%MERGEBOXES Summary of this function goes here
%   Detailed explanation goes here
% box1: [xa1,ya1,xa2,ya2]
% box2: [xb1,yb1,xb2,yb2]
box = [min([box1(:,1),box2(:,1)],[],2), min([box1(:,2),box2(:,2)],[],2), max([box1(:,3),box2(:,3)],[],2), max([box1(:,4),box2(:,4)],[],2)];

end

