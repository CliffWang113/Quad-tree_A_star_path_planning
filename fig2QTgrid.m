function[QTgrid] = fig2QTgrid(BW,L)

S = qtdecomp(BW,0.015);
QTgrid = zeros(L,L);
blocks = full(S);

for i = 1:L
   for j = 1:L
      if blocks(i,j) ~= 0
          diag = blocks(i,j);
          if BW(i,j) == 1
              if diag > 2
                temp = zeros(diag,diag);
                temp(2:diag-1,2:diag-1) = 1;
                QTgrid(i:i+diag-1,j:j+diag-1) = temp;
              elseif diag == 2
                temp = zeros(diag,diag);
                QTgrid(i:i+diag-1,j:j+diag-1) = temp;
              else
                QTgrid(i,j) = 0;
              end
          end
      end
   end
end


