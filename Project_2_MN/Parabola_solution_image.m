function [] = Parabola_solution_image(a, l)
colormap colorcube;
A = Parabola_distinct(a, 10^-10, 100, -l, l, -l, l, 1000, 1000);
imagesc(A);
xticklabels = -l:1:l;
xticks = linspace(1, size(A, 2), numel(xticklabels));
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels);
yticklabels = -l:1:l;
yticks = linspace(1, size(A, 1), numel(yticklabels));
set(gca, 'YTick', yticks, 'YTickLabel', flipud(yticklabels(:)))
set(gca,'FontSize',14)
xlabel("Re(x)")
ylabel("Im(x)")
title("Zbieżność w metodzie parabol")