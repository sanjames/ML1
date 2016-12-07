fprintf('Plotting Data ...\n')
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

m = length(y); % number of training examples
% Initialize some useful values
J_history = zeros(iterations, 1);

for iter = 1:iterations

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    theta = theta - alpha * (1/m) * (X' * (X * theta - y))
    %sum((X*theta - y)*X)
    
    %GD = X'* (X*theta - y) / m;
    %theta = theta - alpha * gradJ;
    %J = 1/(2*m) * (sum((X * theta - y) .^ 2))
    

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
