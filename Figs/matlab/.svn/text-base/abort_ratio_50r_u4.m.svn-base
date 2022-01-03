data_u4 = load('abort_ratio_50r_u4.txt');

axis([0 100 0 0.04]);
hold;

xlabel('\nu, % native operations');
h = get(gca, 'xlabel');
set(h, 'FontSize', 20);

ylabel('% aborted operations');
h = get(gca, 'ylabel');
set(h, 'FontSize', 20);

plot([0:10:100], data_u4(:,1), '-^', 'LineWidth', 3, 'MarkerSize', 10);
plot([0:10:100], data_u4(:,2), '-v', 'LineWidth', 3, 'MarkerSize', 10);

legend('Mediator, \rho = 0.5', 'Mediator, \rho = 0.9');
set(gca, 'FontSize', 20);

print -depsc abort_ratio_50r_u4.eps


