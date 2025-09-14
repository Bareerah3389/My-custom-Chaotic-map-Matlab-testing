% Define parameters
V1 = -75;            % Parameter V1
a = 0.34;            % Parameter a
b = 0.397;           % Parameter b
n = 1000;            % Total number of iterations
last_N = 3000;       % Number of iterations to plot after transients settle
gamma_values = linspace(-10, 10, 10000);  % Range of gamma values
x0 = 0.00000000000001;   % Initial condition

% Preallocate arrays for bifurcation diagram
bifurcation_diagram = zeros(last_N, length(gamma_values));

% Iterate over different gamma values
for i = 1:length(gamma_values)
    gamma = gamma_values(i);
    x = x0;
    
    for j = 1:n
        x_next = mod(V1 * x + gamma * (V1 * x) - a * x^2 + b * x^2, 1);
        if x_next < 0
            x_next = 0;
        end
        if j > (n - last_N)
            bifurcation_diagram(j - (n - last_N), i) = x_next;
        end
        x = x_next;
    end
end

% Plot Bifurcation Diagram
figure;
plot(repmat(gamma_values, last_N, 1), bifurcation_diagram, '.', 'MarkerSize', 1, 'Color', 'blue');
xlabel('$\gamma$', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('x', 'FontSize', 14);

% Add white vertical line at gamma = 0 (center)
hold on;
y_limits = ylim;  % Get current y-axis limits
line([0 0], [y_limits(1) y_limits(2)], 'Color', 'white', 'LineWidth', 2);

% Improve axis appearance
ax = gca;
ax.FontSize = 14;
ax.XColor = 'black';
ax.YColor = 'black';
ax.Box = 'on';
saveas(gcf, 'bifurcation_diagram.png');
