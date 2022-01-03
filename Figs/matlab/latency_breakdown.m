breakdown1 = load('latency_breakdown.median.1.txt');
breakdown2 = load('latency_breakdown.median.2.txt');
breakdown3 = load('latency_breakdown.median.3.txt');

breakdown = (breakdown1 + breakdown2 + breakdown3) / 3;
flip_matrix = [0 0 0 0 0 1;0 0 0 0 1 0;0 0 0 1 0 0; 0 0 1 0 0 0;0 1 0 0 0 0;1 0 0 0 0 0];
breakdown = breakdown * flip_matrix;
hold on;

% Sum of TSO latencies
x = [1:1:10 10:-1:1]';
y = 1000 * sum(breakdown(:,1:2)')
y = [y fliplr(y)]';
patch(x, y, 'white');

% Sum of all latencies
y = 1000 * sum(breakdown');
y = [y fliplr(y)]';
patch(x, y, 'white');

% Redrawing the bars to place them on above the 2-D polygons drawn by the 'patch' command 
% Stacked bars
h = bar(1:size(breakdown, 1), 1000 * breakdown(1:size(breakdown, 1), :), 0.5, 'stack');
% The legend has to include only the series used in the above 'bar' command
%l = legend(h,'DB.txCheckConflict', 'Log.append', 'DB.txPut', 'DB.txGet', 'TSO.txTryCommit', 'TSO.getNextTimestamp', 'Location', 'NorthWest');
l = legend(h, 'TSO.getNextTimestamp', 'TSO.txTryCommit', 'DB.txGet', 'DB.txPut', 'Log.append','DB.txCheckConflict', 'Location', 'NorthWest');

axis([0 11 0 130]);

xlabel('C, number of clients');
h = get(gca, 'xlabel');
set(h, 'FontSize', 20);

ylabel('Latency (ms)');
h = get(gca, 'ylabel');
set(h, 'FontSize', 20);

title('API request latencies');
h = get(gca, 'title');
set(h, 'FontSize', 24);

set(gca, 'XTickLabel', num2cell([50:100:550]));
set(gca, 'YTick', [10:10:150]);
set(gca, 'XTick', 1:2:11);

set(gca, 'FontSize', 14);

set(l,'FontSize',14);

print -depsc latency_breakdown.eps
