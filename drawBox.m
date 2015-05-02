function [ img, boxImg ] = drawBox(img, box, duplicate)
% img: the base image
% box: the box [x1, y1, x2, y2] will be draw on the image.
if ~exist('duplicate','var')
    duplicate = true;
end
    box = floor(box)+[1,1,-1,-1];
    boxcolor = 0;
    boxImg = img(box(2):box(4),box(1):box(3),:);
    img = drawB(img, box, boxcolor);
    boxcolor1=255;
    if duplicate
        box1 = box+[1,1,-1,-1];
        img = drawB(img, box1, boxcolor1);
    end
end

function [img] = drawB(img, box, col)
img(box(2):box(4),[box(1),box(3)],:)=col;
img([box(2),box(4)],box(1):box(3),:)=col;
end