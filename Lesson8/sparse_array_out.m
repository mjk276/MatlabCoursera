function [out]= sparse_array_out(A, filename)
fieldId = fopen(filename,'w+');
if fieldId>0
    [m, n]= size(A);
    [f, c, v]=find(A);
    fwrite(fieldId, uint32(m), 'uint32');
    fwrite(fieldId, uint32(n),'uint32');
    fwrite(fieldId, uint32(length(f)),'uint32');
    for k=1:length(c)
        fwrite(fieldId, uint32(f(k)), 'uint32');
        fwrite(fieldId, uint32(c(k)), 'uint32');
        fwrite(fieldId, v(k), 'double');
    end
    fclose(fieldId);
    out = true;
else
    out = false;
end