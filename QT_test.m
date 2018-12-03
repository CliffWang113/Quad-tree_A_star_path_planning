I = imread('Boston_shore');

L = 1024;

I = I(1:L,1:L,:);
BW = QT_rgb2BW(I,L);

S = qtdecomp(BW,0.015);

blocks = zeros(L,L);

QTgrid = full(S);


for i = 1:L
   for j = 1:L
      if QTgrid(i,j) ~= 0
          diag = QTgrid(i,j);
          if BW(i,j) == 1
              if diag > 2
                temp = zeros(diag,diag);
                temp(2:diag-1,2:diag-1) = 1;
                blocks(i:i+diag-1,j:j+diag-1) = temp;
              elseif diag == 2
                temp = zeros(diag,diag);
                blocks(i:i+diag-1,j:j+diag-1) = temp;
              else
                blocks(i,j) = 0;
              end
          end
      end
   end
end

blocks(end,1:end) = 1;
blocks(1:end,end) = 1;

figure(1)
imshow(I)

figure(2)
imshow(blocks,[])

figure(3)
imshow(BW)