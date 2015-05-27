function [row, col, numrows, numcols, suma]=maxsubsum(A)
[r, c]=size(A);
suma = sum(sum(A));
row = 1;
col = 1;
numrows = r;
numcols = c;
for m= 1:r
    for n = 1:c
        for o = m:r
            for p = n:c
                num = sum(sum(A(m:o, n:p)));
                if(num>suma)
                    suma = num;
                    row = m;
                    col = n;
                    numrows = o-m+1;
                    numcols = p-n+1;
                end
            end
        end
    end
end