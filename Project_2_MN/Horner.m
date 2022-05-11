function [zero, first, second] = Horner(a, x)
n = size(a,2) - 1;
zero = a(n+1);
first = zero;
second = first;
for k = (n):-1:3
    zero = a(k) + x*zero;
    first = zero + x*first;
    second = first + x*second;
end
zero = a(2) + x*zero;
first = zero + x*first;
zero = a(1) + x*zero;
second = 2*second;
