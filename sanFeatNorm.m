clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Print out some data points
fprintf('First 10 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

fprintf('Program paused. Press enter to continue.\n');
pause;

% Add intercept term to X
X = [ones(m, 1) X];
disp(X)
pause;

X_norm = X;
mu = zeros(1, size(X, 2));
disp(mu)
pause;
sigma = zeros(1, size(X, 2));
disp(sigma)
pause;
% mu
for p = 1:size(X, 2)
  mu(p) = mean(X(:, p));
  disp(mu(p))
end

% sigma
for p = 1:size(X, 2)
  sigma(p) = std(X(:, p));
end

% X_norm
for p = 1:size(X, 2)
  if (sigma(p) ~= 0)
    for i = 1:size(X, 1)
      X_norm(i, p) = (X(i, p)-mu(p))/sigma(p);
    end
  else
    X_norm(:, p) = zeros(size(X, 1), 1);
  end
end
