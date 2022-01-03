curve_u1 = load('equilibrium_u1.txt');
curve_u4 = load('equilibrium_u4.txt');
curve_u19 = load('equilibrium_u19.txt');

set(gca, 'xtick', [0:10:100]);
set(gca, 'ytick', [0:10:100]);
axis([0 100 0 100]);
hold;

xlabel('\rho, % reads');
h = get(gca, 'xlabel');
set(h, 'FontSize', 20);

ylabel('\nu, % native operations');
h = get(gca, 'ylabel');
set(h, 'FontSize', 20);

title('Equilibrium Curves');
h = get(gca, 'title');
set(h, 'FontSize', 24);

plot(curve_u1(:,1), curve_u1(:,2), '-d', 'LineWidth', 3, 'MarkerSize', 10, 'Color', 'black');
plot(curve_u4(:,1), curve_u4(:,2), '-s', 'LineWidth', 3, 'MarkerSize', 10, 'Color', 'red');
plot(curve_u19(:,1), curve_u19(:,2), '-p', 'LineWidth', 3, 'MarkerSize', 10, 'Color', 'blue');

%text(50, 20, 'Omid dominates', 'FontSize', 20');
%text(2, 65, 'Mediator dominates', 'FontSize', 20');

legend('U_1 distribution', 'U_4 distribution', 'U_{20} distribution');
set(gca, 'FontSize', 18);
box on;

print -depsc equilibrium_curves.eps


