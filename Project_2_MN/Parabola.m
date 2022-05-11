function [root, iter] = Parabola(a, x, prec, max_iter)
% find a solution for ax = 0, where x = [1 x x^2 ... x^n] with parabola
% method
% author: Jakub Bazyluk
% input: a - polynomial coefficient vector; x - starting point, 
% prec - precision; max_iter - maximal number of iterations 
% example: 
% x = Parabola([1 2 1], 0, 10^-10, 100)
% x = -1
[y, first, second]  = Horner(a, x);
iter = 0;
while abs(y) > prec
    y1 = (-first + sqrt(first^2-2*y*second))/second;
    y2 = (-first - sqrt(first^2-2*y*second))/second;
    if abs(y1) <= abs(y2)
        y = y1;
    else
        y = y2;
    end
    x = x + y;
    iter = iter + 1;
    [y, first, second] = Horner(a, x);
    if iter > max_iter
        x = [];
        break
    end
end
root = x;
