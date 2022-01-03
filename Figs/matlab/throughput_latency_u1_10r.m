mediator_10r  = load('mediator_u1_10r.txt');
omid_10r = load('omid_u1_10r.txt');
hbase_10r = load('hbase_u1_10r.txt');

set(gca, 'xtick', [0:2000:16000]);
axis([0 15000 0 13]);
hold;

xlabel('Throughput (x 10^3 ops)');
h = get(gca, 'xlabel');
set(h, 'FontSize', 22);

ylabel('Latency (msec)');
h = get(gca, 'ylabel');
set(h, 'FontSize', 22);

set(gca, 'XTick', [0 2000 4000 6000 8000 10000 12000 14000 16000]);
set(gca, 'XTickLabel', '0|2|4|6|8|10|12|14|16');
%title('Latency vs Throughput');
%h = get(gca, 'title');
%set(h, 'FontSize', 24);

plot(mediator_10r(:,2), mediator_10r(:,1)/1000, 'o-', 'LineWidth', 2, 'MarkerSize', 10);
text(mediator_10r(1,2)+1000, mediator_10r(1,1)/1000, 'C=50', 'FontSize', 16);
text(mediator_10r(10,2)+1000, mediator_10r(10,1)/1000, 'C=500', 'FontSize', 16);

plot(omid_10r(:,2), omid_10r(:,1)/1000, '*--', 'LineWidth', 2, 'MarkerSize', 10);
text(omid_10r(4,2)-7250, omid_10r(4,1)/1000, 'C=50', 'FontSize', 16)
text(omid_10r(13,2)+1000, omid_10r(13,1)/1000, 'C=500', 'FontSize', 16);

plot(hbase_10r(:,2), hbase_10r(:,1)/1000, '^--', 'LineWidth', 2, 'MarkerSize', 10);
text(hbase_10r(1,2)+1000, hbase_10r(1,1)/1000, 'C=50', 'FontSize', 16);
text(hbase_10r(10,2)+1000, hbase_10r(10,1)/1000, 'C=500', 'FontSize', 16);

legend('Mediator', 'Omid', 'HBase', 2);
set(gca, 'FontSize', 18);

print -depsc throughput_latency_u1_10r.eps
