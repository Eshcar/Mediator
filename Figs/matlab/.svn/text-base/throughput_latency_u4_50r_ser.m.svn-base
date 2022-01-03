mediator_50r_si  = load('mediator_u4_50r_si.txt');
mediator_50r_ser  = load('mediator_u4_50r_ser.txt');

set(gca, 'xtick', [0:10000:30000]);
axis([0 30000 0 65]);
hold;

xlabel('Throughput (ops)');
h = get(gca, 'xlabel');
set(h, 'FontSize', 22);

ylabel('Transaction latency (msec)');
h = get(gca, 'ylabel');
set(h, 'FontSize', 22);

%title('Latency vs Throughput');
%h = get(gca, 'title');
%set(h, 'FontSize', 24);

set(gca, 'XTick', [0 10000 20000 30000]);
set(gca, 'XTickLabel', '0|10K|20K|30K');

plot(mediator_50r_si(1:6,2), mediator_50r_si(1:6,1)/1000, 'o', 'LineWidth', 2, 'MarkerSize', 12);
text(mediator_50r_si(1,2)+1000, mediator_50r_si(1,1)/1000, 'C=50', 'FontSize', 16);
text(mediator_50r_si(6,2)+1000, mediator_50r_si(6,1)/1000, 'C=300', 'FontSize', 16);

plot(mediator_50r_ser(1:6,2), mediator_50r_ser(1:6,1)/1000, 'x', 'LineWidth', 2, 'MarkerSize', 12);
%text(mediator_50r_ser(1,2)+1000, mediator_50r_ser(1,1)/1000, 'C=50', 'FontSize', 16);
%text(mediator_50r_ser(6,2)+1000, mediator_50r_ser(6,1)/1000, 'C=300', 'FontSize', 16);

legend('Mediator, Snapshot Isolation', 'Mediator, Serializability');
set(gca, 'FontSize', 18);

print -depsc throughput_latency_u4_50r_ser.eps
