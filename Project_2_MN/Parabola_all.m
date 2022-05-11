function [roots] = Parabola_all(a, prec, max_iter, a1, b1, a2, b2, n, m)
% find all solutions for ax = 0 in (a1, b1)x(a2, b2)i square , where x = [1
% x x^2 ... x^n] with parabola method 
% author: Jakub Bazyluk
% input: a - polynomial coefficient vector;  
% prec - precision; max_iter - maximal number of iterations 
% (a1, b1)x(a2, b2)i square in wchich solutions are searched for;
% n - number of step on real part; m - number of steps on imaginary part;
% example: 
% x = Parabola_all([5 4+i 2-2i -4], 10^-10, 100, -5, 5, -4, 4, 100, 100)
% x =  [-0.6085 - 0.8820i
%       -0.4776 + 0.5537i
%       1.5861 - 0.1717i ] 
roots = [];
for k = 0:n
    for j = 0:m
        x = a1 + k*(b1-a1)/n + (a2 + j/m*(b2-a2))*1i;
        [x, ~] = Parabola(a, x, prec, max_iter);
        if (~isempty(x)) && isempty(find(abs(roots-x)<=2*sqrt(prec),1))
            roots = [roots; x];
        end
    end
end

