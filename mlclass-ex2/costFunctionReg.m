function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

J = (-(1/m)*sum(y.*log(sigmoid(X*theta)) + (1-y).*log(1-sigmoid(X*theta))))+(lambda/(2*m))*(theta(2:end)'*theta(2:end))

%tempTheta = theta
%tempTheta(2:end) = (lambda/m)*tempTheta(2:end);

theta_temp = [0;(lambda/m)*theta(2:end)];
grad =  (X'*(sigmoid(X*theta) - y))./m + theta_temp  %do not regularize first term in the theta

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta




% =============================================================

end
