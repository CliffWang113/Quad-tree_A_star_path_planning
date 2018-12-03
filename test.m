%%
leafnode.x = [2.5,2.5];
leafnode.d = 2;
leafnode.t = 0;

draw_grid(leafnode)

%%
I = imread('Boston_shore.png');
BW = QT_rgb2BW(I);

%%
I = imread('Boston_shore.png');

L = 1024;

I = I(1:L,1:L,:);
BW = QT_rgb2BW(I,L);

QTgrid = fig2QTgrid(BW,L);

figure(1)
imshow(I)

figure(2)
imshow(QTgrid)

figure(3)
imshow(BW)