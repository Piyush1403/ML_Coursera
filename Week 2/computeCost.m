function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


                          % The formula to compute cost function is (hypothesis - actual value)^2 / (2 * number of training examples)

temp = (X * theta) - y;   % hypothesis = X*theta and error = hypothesis - actual observation

temp = temp .^ 2;         % temp = square error matrix

temp = sum(temp);         % temp = sum(each value in error matrix) 

J = temp / (2*m);         % divide by 2*m to get mean squared error (MSE)

                          % So, the lesser is the cost function, more accurate our prediction is

% =========================================================================

end
