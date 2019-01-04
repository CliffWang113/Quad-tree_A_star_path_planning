%%
leafnode.x = [2.5,2.5];
leafnode.d = 2;
leafnode.t = 0;

draw_grid(leafnode)

%%
I = imread('Boston_shore.png');
BW = QT_rgb2BW(I,1024);

%%
I = imread('Boston_shore.png');

L = 256;

I = I(300:300+L-1,500:500+L-1,:);
%I = I(1:1024,1:1024,:);
BW = QT_rgb2BW(I,L);

[QTgraph,QTgrid] = fig2QTgrid(BW,L);

figure(1)
imshow(I)

figure(2)
imshow(QTgraph)

figure(3)
imshow(BW)