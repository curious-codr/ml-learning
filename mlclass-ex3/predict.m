function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%size(Theta1)
%size(Theta2)
%size(X)

a_1 = [ones(size(X,1),1) X];

a_2_temp = sigmoid(a_1*Theta1');
a_2 = [ones(size(a_2_temp,1),1) a_2_temp];


[q p] = max( sigmoid(a_2*Theta2'), [], 2);
%p = sigmoid(a_2*Theta2') >= 0.5;

size(a_2_temp)
size(a_2)
size(p)
%p = sigmoid(a_2*Theta2) >=0.5








% =========================================================================


end
