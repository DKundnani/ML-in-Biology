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

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
rem_theta=theta(2:end,:);
pred=sigmoid(X*theta);
sub=1-pred;
error1=(-y.*log(pred))-((1-y).*log(sub));
square_theta=rem_theta'*rem_theta;
reg=(lambda/(2*m))*(sum(square_theta));
w_reg=(1/(m))*(sum(error1));
J=w_reg+reg;
fir_X=X(:,1);
rem_X=X(:,2:end);
grad_first=1/m*(sum((pred-y).*fir_X));
grad_reg=(lambda/m).*(rem_theta);
grad_rem=1/m*(sum((pred-y).*rem_X));
grad_fi=grad_rem+grad_reg';
grad=[grad_first,grad_fi];





% =============================================================

end
