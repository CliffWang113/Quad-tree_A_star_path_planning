function[] = draw_grid(leafnode)

if leafnode.t ~= 0
    return
end

d = leafnode.d;

x_r = leafnode.x(1)+2^d/2;
x_l = leafnode.x(1)-2^d/2;

y_t = leafnode.x(2)+2^d/2;
y_b = leafnode.x(2)-2^d/2;

x = [x_l,x_l,x_r,x_r,x_l];
y = [y_t,y_b,y_b,y_t,y_t];

plot(x,y,'Color',[170/255,218/255,255/255])

end