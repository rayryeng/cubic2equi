left = imread('arch_left.png');
right = imread('arch_right.png');
top = imread('arch_top.png');
bottom = imread('arch_bottom.png');
front = imread('arch_front.png');
back = imread('arch_back.png');

close all;
out = cubic2equi(top, bottom, left, right, front, back);
imshow(out);