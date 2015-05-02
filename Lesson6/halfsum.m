function [out] = halfsum(A)
 out =0;
 [m n]=size(A);
 for k =1:m
     for l=1:n
         if(k<=l)
             out = out +A(k,l);
         end
     end
 end
end