% Define parameters
V = -75;
a = 0.34;        % Parameter a
b = 0.397;       % Parameter b
n = 1000;
m = 100000;  % Reduced number of iterations for quicker observation
gamma_values = linspace(-10, 10, m);  % Vary gamma over a range of values

% Initialize arrays to store Lyapunov exponents
x = zeros(1, n);
lyapunov_exponents = zeros(1, m);
x(1) = 0.00001; 

% Iterate over different 'gamma' values
for i = 1:m
    gamma = gamma_values(i);  % Get current value of gamma
    
    sum = 0;
    % Iterate to calculate Lyapunov exponent
    for j = 1:n
        % Update x according to new equation
        x(j+1) = mod(V * x(j) + gamma * (V * x(j) - a * x(j)^2 + b * x(j))^2, 1);
        
        % Calculate the derivative of the new equation
        derivative = V + 2 * gamma * (V + b * x(j) - a * x(j)^2) * (V + b - 2 * a * x(j));
        
        sum = sum + log(abs(derivative));
    end
    
    lyapunov_exponents(i) = sum / n;
end

% Plot Lyapunov Exponents
figure;
xlabel('$\gamma$', 'Interpreter', 'latex', 'FontSize', 14);  % Uses the gamma symbol with LaTeX interpreter
ylabel('Lyapunov Exponent', 'Interpreter', 'latex', 'FontSize', 14);
hold on;
plot(gamma_values, lyapunov_exponents, 'linewidth', 2);
