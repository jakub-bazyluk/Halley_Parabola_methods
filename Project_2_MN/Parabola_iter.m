function [N_iter] = Parabola_iter(a, prec, max_iter, a1, b1, a2, b2, n, m)
N_iter = zeros(n+1, m+1);
for k = 0:n
    for j = 0:m
        x = a1 + k*(b1-a1)/n + (a2 + j/m*(b2-a2))*1i;
        [~, N_iter(k+1,j+1)] = Parabola(a, x, prec, max_iter);
    end
end

