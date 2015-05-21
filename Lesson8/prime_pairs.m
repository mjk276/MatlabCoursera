function [p] = prime_pairs(n)
prime = primes(100000+n);
len = length(prime);
existe = false;
fin = false;
counter = 1;
p = -1;
while ~existe &&  ~fin
    output = find(prime-prime(counter)==n, 1);
    if ~isempty(output)
        existe = true;
        p = prime(counter);
    end
    if counter == len
        fin = true;
    end
    counter = counter +1;
end