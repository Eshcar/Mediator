%mediator = load('mediator_throughput_native_read_u1.txt');
%omid = load('omid_throughput_native_read_u1.txt');
mediator = load('mediator_throughput_native_read_u4.txt');
omid = load('omid_throughput_native_read_u4.txt');

% colormap(gray);

diff = log2(mediator ./ omid);
[X, Y] = meshgrid(0:10:100, 0:10:100);
maxd = max(max(diff));
find = min(min(diff));
%c = mediator;
%for i = 1:1:11
%for j = 1:1:11
%if (diff(i,j) < 0)
%     c(i,j) = - diff(i,j)/mind;
%else 
%     c(i,j) = diff(i,j)/maxd;
%end;
%end;
%end;

%contourf(X, Y, diff, c);
contourf(X, Y, transpose(diff));
%colormap autumn;
colorbar;%('YTickLabel', {'-1', '-0.8', '-0.6', '-0.4', '-0.2', '0', '1', '2', '3', '4', '5'});

xlabel('\rho, % reads');
h = get(gca, 'xlabel');
set(h, 'FontSize', 20);

ylabel('\nu, % native operations');
h = get(gca, 'ylabel');
set(h, 'FontSize', 20);

set(gca, 'xtick', [0:20:100]);
set(gca, 'ytick', [0:20:100]);
%axis([0 100 0 100 -.5e+5 1e+5]);
axis([0 100 0 100]);

set(gca, 'FontSize', 18);
%zlabel('Throughput gap (ops)');
%h = get(gca, 'zlabel');
%set(h, 'FontSize', 16);

title('Mediator/Omid throughput ratio (log scale)');
h = get(gca, 'title');
set(h, 'FontSize', 24);

hold on;

text(22, 24, 'Omid dominates', 'FontSize', 24', 'Color', 'white');
text(30, 50, 'Mediator dominates', 'FontSize', 24', 'Color', 'white');

% Flip the colors in the colormap
colormap(flipud(colormap))

%curve_u1 = load('equilibrium_u1.txt');
curve_u4 = load('equilibrium_u4.txt');
plot(curve_u4(:,1), curve_u4(:,2), 's-', 'LineWidth', 4, 'MarkerSize', 10, 'Color', 'black', 'MarkerFaceColor', [0,0,0], 'MarkerEdgeColor', [0,0,0]);

print -depsc mesh_color.eps
