function [root, iter] = Halley(a, x, prec, max_iter)
% find a solution for ax = 0, where x = [1 x x^2 ... x^n] with Halley
% method
% author: Jakub Bazyluk
% input: a - polynomial coefficient vector; x - starting point, 
% prec - precision; max_iter - maximal number of iterations 
% example: 
% x = Halley([1 2 1], 0, 10^-10, 100)
% x = -1
[y, first, second]  = Horner(a, x);
iter = 0;
while abs(y) > prec
    x = x - y/(first - second*y/2/first);
    iter = iter + 1;
    [y, first, second] = Horner(a, x);
    if iter > max_iter
        x = [];
        break
    end
end
root = x;