A = rem(randi(100, 1000,1000), 5);
filename = 'test';
sparse_array_out(A, filename);
B = sparse_array_in(filename);
