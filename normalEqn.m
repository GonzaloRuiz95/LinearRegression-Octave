function [theta] = normal_equation(X, y)    theta = inv(X' * X) * X' * y;end
