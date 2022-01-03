clients = [50:50:700];

mediator  = load('mediator_u1_90r.txt');
omid = load('omid_u1_90r.txt');

set(gca, 'xtick', [0:50:800]);
axis([0 800 0 100]);
hold;

xlabel('Number of clients');
h = get(gca, 'xlabel');
set(h, 'FontSize', 20);

ylabel('Latency (ms)');
h = get(gca, 'ylabel');
set(h, 'FontSize', 20);

title('Latency vs Number of Clients');
h = get(gca, 'title');
set(h, 'FontSize', 24);

plot(clients, mediator/1000, '-o', 'LineWidth', 2, 'MarkerSize', 8);
plot(clients, omid/1000, '--+', 'LineWidth', 2, 'MarkerSize', 8);
%plot(clients, hbase, '-s', 'LineWidth', 2, 'MarkerSize', 8);

legend('Mediator', 'Omid', 'HBase');
set(gca, 'FontSize', 14);

print -depsc latency_num_clients_u1_90r.eps
