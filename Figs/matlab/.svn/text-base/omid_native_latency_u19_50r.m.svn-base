omid = load('omid_native_latency_u19_50r.txt');

set(gca, 'xtick', [0:10:110]);
axis([-1 11 0 20]);
hold;

xlabel('\nu, %native operations');
h = get(gca, 'xlabel');
set(h, 'FontSize', 22);

ylabel('Latency (ms)');
h = get(gca, 'ylabel');
set(h, 'FontSize', 22);

set(gca, 'XTickLabel',{'0','10','20','30','40','50','60','70','80','90','100'}, 'XTick',[0 1 2 3 4 5 6 7 8 9 10]);
set(gca, 'YTickLabel',{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}, 'YTick',0:1:20);

%title('Latency of operations, \rho = 0.5');
h = get(gca, 'title');
set(h, 'FontSize', 24);

%plot(omid_u19(:,1), omid_u19(:,2)/1000, '*--', 'LineWidth', 2, 'MarkerSize', 10);
%plot(omid_u19(:,1), omid_u19(:,4)/1000, '^--', 'LineWidth', 2, 'MarkerSize', 10);
handleBar = bar(0:1:10, omid/1000);

red = [1, 0, 0];
green = [0, 1, 0];
blue = [0, 0, 1];

colors = [red; green; blue];
colormap(colors);

legend('HBase', 'Transactified (Omid), U_4 in background', 'Transactified (Omid), U_{20} in background');
set(gca, 'FontSize', 14);

print -depsc omid_native_latency_u19_50r.eps
