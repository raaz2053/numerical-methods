% Define the equation
equation = @(x) x.^3 - 2.*x - 5;

% Create a vector of x values
x_values = linspace(-5, 5, 100); % Adjust the range and number of points as needed

% Evaluate the equation for each x value
y_values = equation(x_values);

% Find the roots of the equation
pkg load symbolic  % Load the symbolic package in Octave
syms x
roots = double(solve(x^3 - 2*x - 5));

% Plot the equation
plot(x_values, y_values)
hold on
plot(roots, zeros(size(roots)), 'ro', 'MarkerSize', 10)
hold off
xlabel('x')
ylabel('y')
title('Plot of x^3 - 2*x - 5')
grid on

