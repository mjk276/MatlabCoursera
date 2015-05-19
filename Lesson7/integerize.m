function [out] = integerize(A)
if A >= 0
    if A < 2^8
        out = 'uint8';
    elseif A< 2^16
        out = 'uint16';
    elseif A< 2^32
        out = 'uint32';
    elseif A< 2^64
        out = 'uint64';
    else
        out = 'NONE';
    end
else
    out = 'NONE';
end