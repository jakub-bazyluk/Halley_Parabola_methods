function [] = Parabola_iter_image(a, k, l)
y = flip(autumn(k));
y(k,:) = zeros(1,3);
colormap(y);
A = Parabola_iter(a, 10^-10, 100, -l, l, -l, l, 1000, 1000);
imagesc(A, [1,k]);
xticklabels = -l:1:l;
xticks = linspace(1, size(A, 2), numel(xticklabels));
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels);
yticklabels = -l:1:l;
yticks = linspace(1, size(A, 1), numel(yticklabels));
set(gca, 'YTick', yticks, 'YTickLabel', flipud(yticklabels(:)))
colorbar;
set(gca,'FontSize',14)
xlabel("Re(x)")
ylabel("Im(x)")
title("Liczba iteracji w metodzie parabol")