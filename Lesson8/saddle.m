function[indices] = saddle(A)
[m, n]= size(A);
indices = [];
cont = 1;
for l = 1:n
    for k = 1:m
        if sum(A(k,l) == max(A(k, :)))>0 && sum(A(k,l)==min(A(:,l)))>0
           indices(cont,1)= k;
           indices(cont,2)= l;
           cont = cont +1;
       end
    end
end
end