%data = load('equilibrium_50r_u4.txt');
data = load('equilibrium_90r_u4.txt');

axis([0 100 0 8e+4]);
hold;

xlabel('\nu, % native operations');
h = get(gca, 'xlabel');
set(h, 'FontSize', 20);

ylabel('Throughput (x 10^3 ops)');
h = get(gca, 'ylabel');
set(h, 'FontSize', 20);

set(gca, 'YTick', [0 10000 20000 30000 40000 50000 60000 70000 80000]);
set(gca, 'YTickLabel', '0|10|20|30|40|50|60|70|80');

plot([0:10:100], data(:,2), '-o', 'LineWidth', 3, 'MarkerSize', 10);
plot([0:10:100], data(:,1), '--*', 'LineWidth', 3, 'MarkerSize', 10);
line([20,20], [0,8e+4], 'LineWidth', 1.5, 'Color', 'red');
line([28,28], [0,8e+4], 'LineWidth', 1.5, 'Color', 'red');
%plot([0:10:100], data2(:,2), '--x', 'LineWidth', 3, 'MarkerSize', 10);
%plot([0:10:100], data2(:,1), '-+', 'LineWidth', 3, 'MarkerSize', 10);

text(22, 2e+4, 'equilibrium', 'FontSize', 18);

legend('Mediator', 'Omid');
set(gca, 'FontSize', 20);

plot(24.442, 2.9e+4, 'r*', 'MarkerSize',20);

print -depsc equilibrium_90r_u4.eps


