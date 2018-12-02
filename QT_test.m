I = imread('Boston_shore.png');

I = rgb2gray(I);
I = I(1:1024,1:1024);
S = qtdecomp(I,0.015);
blocks = repmat(uint8(0),size(S));

for dim = [1024 512 256 128 64 32 16 8 4 2 1];    
  numblocks = length(find(S==dim));    
  if (numblocks > 0)        
    values = repmat(uint8(1),[dim dim numblocks]);
    values(2:dim,2:dim,:) = 0;
    blocks = qtsetblk(blocks,S,dim,values);
  end
end

blocks(end,1:end) = 1;
blocks(1:end,end) = 1;

figure(1)
imshow(I)

figure(2)
imshow(blocks,[])