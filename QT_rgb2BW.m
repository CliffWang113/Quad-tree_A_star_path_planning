function[BW] = QT_rgb2BW(I,L)

I = I(1:L,1:L,:);

BW = zeros(L,L);

for i = 1:L
    for j = 1:L
        if I(i,j,3) > 240
           BW(i,j) = true;
        else
           BW(i,j) = false;
        end
    end
end

end