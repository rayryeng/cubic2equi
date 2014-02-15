left = imread('arch_left.jpg');
right = imread('arch_right.jpg');
top = imread('arch_top.jpg');
bottom = imread('arch_bottom.jpg');
front = imread('arch_front.jpg');
back = imread('arch_back.jpg');

close all;
out = cubic2equi(top, bottom, left, right, front, back);
imshow(out);