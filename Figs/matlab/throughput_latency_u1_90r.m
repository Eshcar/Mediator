mediator_90r  = load('mediator_u1_90r.txt');
omid_90r = load('omid_u1_90r.txt');
hbase_90r = load('hbase_u1_90r.txt');

set(gca, 'xtick', [0:10000:70000]);
axis([0 70000 0 20]);
hold;

xlabel('Throughput (x 10^3 ops)');
h = get(gca, 'xlabel');
set(h, 'FontSize', 22);

ylabel('Latency (ms)');
h = get(gca, 'ylabel');
set(h, 'FontSize', 22);

set(gca, 'XTick', [0 10000 20000 30000 40000 50000 60000 70000]);
set(gca, 'XTickLabel', '0|10|20|30|40|50|60|70');
%title('Latency vs Throughput');
%h = get(gca, 'title');
%set(h, 'FontSize', 24);

plot(mediator_90r([1 2 3 4 5 6 7 10],2), mediator_90r([1 2 3 4 5 6 7 10],1)/1000, 'o-', 'LineWidth', 2, 'MarkerSize', 10);
text(mediator_90r(2,2)+1000, mediator_90r(2,1)/1000, 'C=50', 'FontSize', 16);
text(mediator_90r(11,2)+1000, mediator_90r(11,1)/1000, 'C=500', 'FontSize', 16);

plot(omid_90r(:,2), omid_90r(:,1)/1000, '*--', 'LineWidth', 2, 'MarkerSize', 10);
text(omid_90r(2,2)-7250, omid_90r(2,1)/1000, 'C=50', 'FontSize', 16);
text(omid_90r(11,2)+1000, omid_90r(11,1)/1000, 'C=500', 'FontSize', 16);

plot(hbase_90r([1 2 5 7 8 10],2), hbase_90r([1 2 5 7 8 10],1)/1000, '^--', 'LineWidth', 2, 'MarkerSize', 10);
text(hbase_90r(2,2)+1000, hbase_90r(2,1)/1000, 'C=50', 'FontSize', 16);
text(hbase_90r(11,2)+1000, hbase_90r(11,1)/1000, 'C=500', 'FontSize', 16);

legend('Mediator', 'Omid', 'HBase');
set(gca, 'FontSize', 18);

print -depsc throughput_latency_u1_90r.eps
