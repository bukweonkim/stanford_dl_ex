function [f,g] = linear_regression(theta, X,y)
%
% Arguments:
%   theta - A vector containing the parameter values to optimize.
%   X - The examples stored in a matrix.
%       X(i,j) is the i'th coordinate of the j'th example.
%   y - The target value for each example.  y(j) is the target for example j.
%

m=size(X,2);
n=size(X,1);

f=0;
g=zeros(size(theta));

%
% TODO:  Compute the linear regression objective by looping over the examples in X.
%        Store the objective function value in 'f'.
%
% TODO:  Compute the gradient of the objective with respect to theta by looping over
%        the examples in X and adding up the gradient for each example.  Store the
%        computed gradient in 'g'.

%%% YOUR CODE HERE %%%

for j=1:m
    J=0.5*((theta'*X(:,j)-y(j))^2);
    f=f+J;
    
end

for i=1:n
    g(i)=0;
    for j=1:m
        g(i)=g(i)+(theta'*X(:,j)-y(j))*X(i,j);
    end
end

