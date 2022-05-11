%% Variables
a = 20*rand(1,10)+20i*rand(1,10)+7-3i;
prec = 10^-10;
max_iter = 100;
l = 5;
n = 100;

%% Halley
Halley(a,0, prec, max_iter)
Halley_all(a ,prec, max_iter, -l, l, -l, l, n, n)

%% Parabola
Parabola(a,0, prec, max_iter)
Parabola_all(a ,prec, max_iter, -l, l, -l, l, n, n)

%% Iter
tiledlayout(1,2)
nexttile
Halley_iter_image(a, 20, l)
nexttile
Parabola_iter_image(a, 20, l)

%% Sol
tiledlayout(1,2)
nexttile
Halley_solution_image(a, l)
nexttile
Parabola_solution_image(a, l)
