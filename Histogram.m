% Parameters
v = -75;   % Set the value for v
k = -10;   % Set the value for k
a = 0.34;   % Set the value for a
b = 0.397;   % Set the value for b
numIterations = 1000000; % Number of iterations
x0 = rand(); % Initial value of x (random number between 0 and 1)

% Preallocate array for efficiency
x = zeros(numIterations, 1);
x(1) = x0;

% Generate the sequence using the recurrence relation
for i = 1:numIterations-1
    x(i+1) = mod(v * x(i) + k * (v * x(i) - a * x(i)^2 + b * x(i))^2, 1);
end

% Plot the histogram
figure;
histogram(x, 50); % 50 bins for the histogram
xlabel('Random Values');
ylabel('Frequency');