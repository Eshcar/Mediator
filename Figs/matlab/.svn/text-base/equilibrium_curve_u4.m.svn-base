curve_u4 = load('equilibrium_u4.txt');

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

%title('Equilibrium Curve - the U4 Workload');
h = get(gca, 'title');
set(h, 'FontSize', 24);

errorbar(curve_u4(:,1), curve_u4(:,2), curve_u4(:,2)-curve_u4(:,3), curve_u4(:, 4)-curve_u4(:,2), '-p', 'LineWidth', 2, 'MarkerSize', 10, 'Color', 'blue');

text(30, 20, 'Omid dominates', 'FontSize', 20');
text(30, 65, 'Mediator dominates', 'FontSize', 20');

%legend('U_1 distribution', 'U_4 distribution', 'U_{20} distribution');
set(gca, 'FontSize', 18);
box on;

print -depsc equilibrium_curve_u4.eps


