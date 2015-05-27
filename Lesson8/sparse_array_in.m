function [A] = sparse_array_in(filename)
id = fopen(filename, 'r');
if id>0
    m = fread(id, 1, 'uint32');
    n = fread(id, 1, 'uint32');
    cant = fread(id, 1, 'uint32');
    A = zeros(m, n);
    for l= 1:cant
        f = fread(id, 1, 'uint32');
        c = fread(id, 1, 'uint32');
        A(f, c) = fread(id, 1, 'double');
    end
    fclose(id);
else
    A =[];
end