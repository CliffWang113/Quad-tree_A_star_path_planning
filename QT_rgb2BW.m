function[BW] = QT_rgb2BW(I)

I = I(1:1024,1:1024,:);

BW = zeros(1024,1024);

for i = 1:1024
    for j = 1:1024
        if I(i,j,3) > 240
           BW(i,j) = true;
        else
           BW(i,j) = false;
        end
    end
end

end