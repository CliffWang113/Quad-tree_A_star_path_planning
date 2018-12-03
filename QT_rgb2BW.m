function[BW] = QT_rgb2BW(I,length)

I = I(1:length,1:length,:);

BW = zeros(length,length);

for i = 1:length
    for j = 1:length
        if I(i,j,3) > 240
           BW(i,j) = true;
        else
           BW(i,j) = false;
        end
    end
end

end