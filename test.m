leafnode.x = [2.5,2.5];
leafnode.d = 2;
leafnode.t = 0;

draw_grid(leafnode)

%%
I = imread('Boston_shore.png');
BW = QT_rgb2BW(I);