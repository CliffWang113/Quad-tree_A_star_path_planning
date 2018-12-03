function[QTgraph,QTgrid] = fig2QTgrid(BW,L)

S = qtdecomp(BW,0.015);
QTgraph = zeros(L,L);
blocks = full(S);


k = 1;
for i = 1:L
   for j = 1:L
      if blocks(i,j) ~= 0
          diag = blocks(i,j);
          if BW(i,j) == 1
             QTgrid(k).x = [i;j];
             QTgrid(k).d = log2(diag);
             k = k+1;
              if diag > 2
                temp = zeros(diag,diag);
                temp(2:diag-1,2:diag-1) = 1;
                QTgraph(i:i+diag-1,j:j+diag-1) = temp;
              elseif diag == 2
                temp = zeros(diag,diag);
                QTgraph(i:i+diag-1,j:j+diag-1) = temp;
              else
                QTgraph(i,j) = 0;
              end
          end
      end
   end
end


