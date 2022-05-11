function [dis] = Parabola_distinct(a, prec, max_iter, a1, b1, a2, b2, n, m)
dis = zeros(n+1, m+1);
for k = 0:n
    for j = 0:m
        x = a1 + k*(b1-a1)/n + (a2 + j/m*(b2-a2))*1i;
        [sol,~] = Parabola(a, x, prec, max_iter);
        if ~isempty(sol)
            dis(k+1, j+1) = real(sol)+imag(sol);
        end
    end
end

