% Define parameters
v = -75;             % Parameter v
a = 0.34;            % Parameter a
b = 0.397;           % Parameter b
k = -9.901;          % Fixed value of k for phase space diagram
N = 100000;            % Total number of iterations
transient = 200;     % Number of transient iterations to discard
x0 = 0.000000000001;          % Initial condition

% Initialize arrays
x = zeros(1, N);
x(1) = x0;

% Iterate to compute the states
for i = 1:N-1
    x(i+1) = mod(v * x(i) + k * (v * x(i) - a * x(i)^2 + b * x(i))^2, 1);
end

% Discard transient values and plot phase space diagram
figure;
plot(x(1:end-1), x(2:end), '.');
xlabel('x_i');
ylabel('x_{i+1}');


% Optionally save the plot as an image
% saveas(gcf, 'phase_space_diagram.png'); i need this plot from -10 to 10 at x label kindly help me to update this code